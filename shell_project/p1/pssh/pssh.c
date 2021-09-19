#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <readline/readline.h>

#include "builtin.h"
#include "parse.h"

#include<sys/wait.h> 
#include<fcntl.h>
/*******************************************
 * Set to 1 to view the command line parse *
 *******************************************/
#define DEBUG_PARSE 0
#define MAX_BUF 1024

void print_banner ()
{
    printf ("                    ________   \n");
    printf ("_________________________  /_  \n");
    printf ("___  __ \\_  ___/_  ___/_  __ \\ \n");
    printf ("__  /_/ /(__  )_(__  )_  / / / \n");
    printf ("_  .___//____/ /____/ /_/ /_/  \n");
    printf ("/_/ Type 'exit' or ctrl+c to quit\n\n");
}


/* returns a string for building the prompt
 *
 * Note:
 *   If you modify this function to return a string on the heap,
 *   be sure to free() it later when appropirate!  */

static char* build_prompt (char *cwd) //Modified to get the pwd, adds "$ " and returns
{
   if (getcwd(cwd, MAX_BUF) != NULL) {
       strcat(cwd, "$ ");
       return cwd;
   } else {
       perror("getcwd() error");
       exit(EXIT_FAILURE);
   }
}


/* return true if command is found, either:
 *   - a valid fully qualified path was supplied to an existing file
 *   - the executable file was found in the system's PATH
 * false is returned otherwise */
char *store_path;
static int command_found (const char* cmd)
{
    char* dir;
    char* tmp;
    char* PATH;
    char* state;
    char probe[PATH_MAX];

    int ret = 0;

    if (access (cmd, X_OK) == 0)
        return 1;

    PATH = strdup (getenv("PATH"));

    for (tmp=PATH; ; tmp=NULL) {
        dir = strtok_r (tmp, ":", &state);
        if (!dir)
            break;

        strncpy (probe, dir, PATH_MAX-1);
        strncat (probe, "/", PATH_MAX-1);
        strncat (probe, cmd, PATH_MAX-1);
        store_path = probe;//store the path of the executable (used in which command)
        if (access (probe, X_OK) == 0) {
            ret = 1;
            break;
        }
    }
    free (PATH);
    return ret;
}

/*Takes a command, argv, in and out file descriptors.
Uses the command and the arguments to execute the command.
The in and out file descriptors are set accordingly to accomodate any files/pipes/stdout/stdin etc...
Supports the bultin commands which and exit.*/
void exec_cmd(char *cmd, char**options, int pip_read, int pip_write){

    pid_t pid;
    pid = vfork(); 

    if(pid < 0){
        printf("failed to fork\n");
        exit (EXIT_FAILURE);
    }

    if(pid > 0){
        wait(NULL);
    }else{

        if(pip_read != STDIN_FILENO){
            if(dup2(pip_read, STDIN_FILENO) == -1){
                printf("failed to dup!\n"); 
                exit(EXIT_FAILURE);
            }
        }
        if(pip_write != STDOUT_FILENO){
            if(dup2(pip_write, STDOUT_FILENO) == -1){
                printf("failed to dup!\n"); 
                exit(EXIT_FAILURE);
            }
        }

        if(strcmp(cmd,"which") == 0){//bultin command which
            if ( !(access (options[1], F_OK)) || command_found(options[1])){ //check if input file exists

                char* path = realpath(options[1], NULL);

                if(path == NULL){//if NULL then look for the latest path returned by command_found
                    path = store_path;
                }
                execlp("echo", "echo", path, NULL);
            }else{
                if(is_builtin (options[1])){//check if builtin
                    char *print_out = options[1];
                    strcat(print_out, ": shell built-in command");
                    execlp("echo", "echo", print_out, NULL);
                }else{
                    execlp("echo", "echo", "File not found!", NULL);
                }
            }
        }else{
            execvp(cmd, options);
            printf("Child: failed to exec!\n");
            exit(EXIT_FAILURE);
        }
    }
}

/* Called upon receiving a successful parse.
 * This function is responsible for cycling through the
 * tasks, and forking, executing, etc as necessary to get
 * the job done! */

void execute_tasks (Parse* P)
{
    unsigned int t = 0;
    

    if(command_found (P->tasks[t].cmd) || is_builtin (P->tasks[t].cmd)){ //checks if first command is supported

        if(!strcmp (P->tasks[0].cmd, "exit")){ //implement builtin exit command to exit the program
            printf("Exiting pssh...\n");
            exit(EXIT_SUCCESS);
        }
        int fd;
        if(P->ntasks > 1){//executes for piped commands

            int i;
            int fd_pip[2];
            int store_fd[P->ntasks*2];//array to store pipe file descriptors (2 for each command)

            for(i = 0; i<P->ntasks-1; i++){ //goes through all piped commands except the last one 

                if(pipe(fd_pip) == -1){
                    fprintf(stderr, "failed to create pipe\n");
                    exit(EXIT_FAILURE);
                }

                //store all the pipe file descriptors
                store_fd[i*2] = fd_pip[0]; 
                store_fd[i*2+1] = fd_pip[1];

                if(i == 0){
                    if( P->infile){ //if there is a an input file
                        fd = open( P->infile, O_RDWR | O_CREAT, 0777);
                        exec_cmd(P->tasks[i].cmd, P->tasks[i].argv , fd, store_fd[i*2+1]);
                        wait(NULL);
                        close(fd); 
                    }else{
                        exec_cmd(P->tasks[i].cmd, P->tasks[i].argv, STDIN_FILENO, store_fd[i*2+1]); //in, out
                    } 
                    
                }else{//this is any piped command that is not the first or last one
                    close(store_fd[(i-1)*2+1]);
                    exec_cmd(P->tasks[i].cmd, P->tasks[i].argv , store_fd[(i-1)*2], store_fd[i*2 + 1]);
                    wait(NULL);
                    close(store_fd[(i-1)*2]);
                }
            }

            //Now run the last command of the piped commands
            close(store_fd[(i-1)*2+1]);
            if(P->outfile){
                fd = open(P->outfile, O_RDWR | O_CREAT, 0777);
                exec_cmd(P->tasks[i].cmd, P->tasks[i].argv , store_fd[(i-1)*2], fd); 
                wait(NULL);
                close(fd);
                close(store_fd[(i-1)*2]);
            }else{
                exec_cmd(P->tasks[i].cmd, P->tasks[i].argv, store_fd[(i-1)*2], STDOUT_FILENO);//in, out
                wait(NULL);
                close(store_fd[(i-1)*2]);
            }

        }else{ //executes single commands

            //if there is a an input/output file open it to fd
            if(P->infile && P->outfile){

                int fd_in, fd_out;
                fd_in = open( P->infile, O_RDWR | O_CREAT, 0777);
                fd_out = open( P->outfile, O_RDWR | O_CREAT, 0777);
                exec_cmd(P->tasks[t].cmd, P->tasks[t].argv , fd_in, fd_out);
                wait(NULL);
                close(fd_in); 
                close(fd_out); 

            }else if(P->infile){

                fd = open( P->infile, O_RDWR | O_CREAT, 0777);
                exec_cmd(P->tasks[t].cmd, P->tasks[t].argv , fd, STDOUT_FILENO);
                wait(NULL);
                close(fd); 

            }else if(P->outfile){

                fd = open(P->outfile, O_RDWR | O_CREAT, 0777);
                exec_cmd(P->tasks[t].cmd, P->tasks[t].argv , STDIN_FILENO, fd); 
                wait(NULL);
                close(fd);  

            }else{

                exec_cmd(P->tasks[t].cmd, P->tasks[t].argv , STDIN_FILENO, STDOUT_FILENO);
                wait(NULL); 
            }
        }
    }else {//command is invalid
        printf ("pssh: command not found: %s\n", P->tasks[t].cmd);
    }
}


int main (int argc, char** argv)
{
    char* cmdline;
    Parse* P;

    print_banner ();

    while (1) {
        char* buf = (char*)malloc(MAX_BUF*sizeof(char)); //takes the current working directory
        cmdline = readline(build_prompt(buf));
        free(buf);
        if (!cmdline)       /* EOF (ex: ctrl-d) */
            exit (EXIT_SUCCESS);

        P = parse_cmdline (cmdline);
        if (!P)
            goto next;

        if (P->invalid_syntax) {
            printf("pssh: invalid syntax \n");
            goto next;
        }

#if DEBUG_PARSE
        parse_debug (P);
#endif

        execute_tasks (P);

    next:
        parse_destroy (&P);
        free(cmdline);
    }
}