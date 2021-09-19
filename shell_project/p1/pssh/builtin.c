#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>

#include "builtin.h"
#include "parse.h"

static char* builtin[] = {
    "exit",   /* exits the shell */
    "which",  /* displays full path to command */
    NULL
};


int is_builtin (char* cmd)
{
    int i;

    for (i=0; builtin[i]; i++) {
        if (!strcmp (cmd, builtin[i]))
            return 1;
    }

    return 0;
}

//this function is not used - all commands are implemented in pssh.c
// void builtin_execute (Task T)
// {
//     if (!strcmp (T.cmd, "exit")) {
//         printf("Exiting pssh...\n");
//         exit (EXIT_SUCCESS);
//     }
//     else if(strcmp (T.cmd, "which")){
//         printf ("pssh: builtin command: %s (not implemented!)\n", T.cmd);
//     }
// }
