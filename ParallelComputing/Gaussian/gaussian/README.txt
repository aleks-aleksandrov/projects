To Compile (1):
    gcc -o gauss_eliminate gauss_eliminate.c compute_gold.c gauss_pthread.c -std=c99 -O3 -Wall -lpthread -lm
To Compile (2):
    make

To Run:
    ./gauss_eliminate grid_size thread_number