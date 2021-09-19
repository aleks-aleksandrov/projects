Project 1
Aleksandar Aleksandrov
14297052

How to Compile and Run
=======================

$ make
$ ./pssh

Description
=======================

The pssh project simulates a simple shell. Most of the changes are in the pssh.c file.

1) build_prompt function is changed to find the current working directory and returns it to build the prompt.

2) exec_cmd - custom function which takes a command, a list of arguments, input and output file descriptors. Then 
according to the input arguments, the function redirects input/output, forks and the child process executes the command
and outputs to the corresponding file descriptor. This function also executes bultin commands.

3) execute_tasks - modified function. Checks if the command is found or if the command is builtin and proceeds to call
the exec_cmd according to the user input. If there is mroe than one command, the function enters a loop which executed and 
redirects outputs/inputs to each command. Exit command is implemented here.

4) builtin.c - removed function builtin_execute - everything is implemented in pssh.command

Thank you!