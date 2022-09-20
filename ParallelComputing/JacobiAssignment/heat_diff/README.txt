To Compile (1):
    gcc -o solver solver.c solver_gold.c solver_pthread.c -O3 -Wall -std=c99 -lm -lpthread
To Compile (2):
    make

To Run:
    ./solver grid_size thread_number min_temp max_temp