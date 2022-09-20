/* Host-side code to perform counting sort 
 * 
 * Author: Naga Kandasamy
 * Date modified: March 8, 2022
 * 
 * Student name(s): FIXME
 * Date modified: FIXME
 * 
 * Compile as follows: make clean && make
 */

#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include <sys/time.h>
#include <string.h>
#include <math.h>
#include <limits.h>


/* Do not change the range value */
#define MIN_VALUE 0 
#define MAX_VALUE 255

#define THREAD_BLOCK_SIZE 256 
#define HISTOGRAM_SIZE 256 

#include "counting_sort_kernel.cu"

// #define THREAD_BLOCK_SIZE 11 
// #define HISTOGRAM_SIZE 11 

/* Uncomment to spit out debug info */
//#define DEBUG

extern "C" int counting_sort_gold(int *, int *, int, int);
int rand_int(int, int);
void print_array(int *, int);
void print_min_and_max_in_array(int *, int);
void compute_on_device(int *, int *, int, int);
void compute_on_device_not_optimized(int *, int *, int, int);
void compute_on_device_optimized(int *, int *, int, int);
int check_if_sorted(int *, int);
int compare_results(int *, int *, int);

int main(int argc, char **argv)
{
    if (argc < 2) {
        printf("Usage: %s num-elements\n", argv[0]);
        exit(EXIT_FAILURE);
    }

    int num_elements = atoi(argv[1]);
    int range = MAX_VALUE - MIN_VALUE;
    int *input_array, *sorted_array_reference, *sorted_array_d;

    struct timeval start, stop;	

    /* Populate input array with random integers between [0, RANGE] */
    printf("Generating input array with %d elements in the range 0 to %d\n", num_elements, range);
    input_array = (int *)malloc(num_elements * sizeof(int));
    if (input_array == NULL) {
        perror("malloc");
        exit(EXIT_FAILURE);
    }
    
    srand(time(NULL));
    int i;
    for (i = 0; i < num_elements; i++)
        input_array[i] = rand_int (MIN_VALUE, MAX_VALUE);

#ifdef DEBUG
    print_array(input_array, num_elements);
    print_min_and_max_in_array(input_array, num_elements);
#endif

    /* Sort elements in input array using reference implementation. 
     * The result is placed in sorted_array_reference. */
    printf("\nSorting array on CPU\n");
    int status;
    sorted_array_reference = (int *)malloc(num_elements * sizeof(int));
    if (sorted_array_reference == NULL) {
        perror("malloc"); 
        exit(EXIT_FAILURE);
    }
    memset(sorted_array_reference, 0, num_elements);

    gettimeofday(&start, NULL);
    status = counting_sort_gold(input_array, sorted_array_reference, num_elements, range);
    gettimeofday(&stop, NULL);
	fprintf(stderr, "Execution time CPU= %fs\n", (float)(stop.tv_sec - start.tv_sec +\
                (stop.tv_usec - start.tv_usec)/(float)1000000));

    if (status == -1) {
        exit(EXIT_FAILURE);
    }

    status = check_if_sorted(sorted_array_reference, num_elements);
    if (status == -1) {
        printf("Error sorting the input array using the reference code\n");
        exit(EXIT_FAILURE);
    }

    printf("Counting sort was successful on the CPU\n");

#ifdef DEBUG
    print_array(sorted_array_reference, num_elements);
#endif

    /* FIXME: Write function to sort elements in the array in parallel fashion. 
     * The result should be placed in sorted_array_mt. */
    printf("\nSorting array on GPU\n");
    sorted_array_d = (int *)malloc(num_elements * sizeof(int));
    if (sorted_array_d == NULL) {
        perror("malloc");
        exit(EXIT_FAILURE);
    }
    memset(sorted_array_d, 0, num_elements);

    // test_input[10] = {8,5,1,3,7,8,6,5,3,8};
    // compute_on_device(test_input, sorted_array_d, 10, range);

    gettimeofday(&start, NULL);
    compute_on_device(input_array, sorted_array_d, num_elements, range);
    //compute_on_device(test_input, sorted_array_d, 10, range);
    //compute_on_device_not_optimized(input_array, sorted_array_d, num_elements, range);
    gettimeofday(&stop, NULL);
	fprintf(stderr, "Execution time GPU= %fs\n", (float)(stop.tv_sec - start.tv_sec +\
                (stop.tv_usec - start.tv_usec)/(float)1000000));

    /* Check the two results for correctness */
    printf("\nComparing CPU and GPU results\n");
    status = compare_results(sorted_array_reference, sorted_array_d, num_elements);
    if (status == 0)
        printf("Test passed\n");
    else
        printf("Test failed\n");

    exit(EXIT_SUCCESS);
}

/* FIXME: Write the GPU implementation of counting sort */
void compute_on_device(int *input_array, int *sorted_array, int num_elements, int range)
{
    
    /* Allocate space on GPU for input data */
    int *input_array_on_device = NULL;
    cudaMalloc((void**)&input_array_on_device, num_elements * sizeof(int));
	cudaMemcpy(input_array_on_device, input_array, num_elements * sizeof(int), cudaMemcpyHostToDevice);

    /* Allocate space on GPU for output data */
    int *sorted_array_device = NULL;
    cudaMalloc((void**)&sorted_array_device, num_elements * sizeof(int));

    /* Allocate space on GPU for histogram data */
    int *histogram_on_device = NULL;
    cudaMalloc((void**)&histogram_on_device, HISTOGRAM_SIZE * sizeof(int));
	cudaMemset(histogram_on_device, 0, HISTOGRAM_SIZE * sizeof(int));

    /* Set up the execution grid on GPU */
	dim3 thread_block(THREAD_BLOCK_SIZE, 1, 1);
    printf("Generating grid dimension of %d blocks, %d threads", num_elements/THREAD_BLOCK_SIZE, THREAD_BLOCK_SIZE);
	dim3 grid(num_elements/THREAD_BLOCK_SIZE,1);

    //generate histogram
    histogram_generation_kernel<<<grid, thread_block>>>(input_array_on_device, histogram_on_device, num_elements, HISTOGRAM_SIZE); 
    cudaDeviceSynchronize();

    dim3 grid_2(1,1);
    //Scan and sort array
    counting_sort_kernel<<< grid_2, thread_block>>>(sorted_array_device,histogram_on_device, HISTOGRAM_SIZE);
    cudaDeviceSynchronize();

    //Copy result to CPU
    cudaMemcpy(sorted_array, sorted_array_device, num_elements * sizeof(int), cudaMemcpyDeviceToHost);

    // /* Free memory */
	cudaFree(input_array_on_device);
	cudaFree(histogram_on_device);
    cudaFree(sorted_array_device);
    return;
}

/* FIXME: Write optimized GPU implementation of counting sort */
void compute_on_device_optimized(int *input_array, int *sorted_array, int num_elements, int range)
{
     return;
}


/* Check if array is sorted */
int check_if_sorted(int *array, int num_elements)
{
    int status = 0;
    int i;
    for (i = 1; i < num_elements; i++) {
        if (array[i - 1] > array[i]) {
            status = -1;
            break;
        }
    }

    return status;
}

/* Check if the arrays elements are identical */ 
int compare_results(int *array_1, int *array_2, int num_elements)
{
    int status = 0;
    int i;
    for (i = 0; i < num_elements; i++) {
        if (array_1[i] != array_2[i]) {
            status = -1;
            break;
        }
    }

    return status;
}

/* Return random integer between [min, max] */ 
int rand_int(int min, int max)
{
    float r = rand()/(float)RAND_MAX;
    return (int)floorf(min + (max - min) * r);
}

/* Print given array */
void print_array(int *this_array, int num_elements)
{
    printf("Array: ");
    int i;
    for (i = 0; i < num_elements; i++)
        printf("%d ", this_array[i]);
    
    printf("\n");
    return;
}

/* Return min and max values in given array */
void print_min_and_max_in_array(int *this_array, int num_elements)
{
    int i;

    int current_min = INT_MAX;
    for (i = 0; i < num_elements; i++)
        if (this_array[i] < current_min)
            current_min = this_array[i];

    int current_max = INT_MIN;
    for (i = 0; i < num_elements; i++)
        if (this_array[i] > current_max)
            current_max = this_array[i];

    printf("Minimum value in the array = %d\n", current_min);
    printf("Maximum value in the array = %d\n", current_max);
    return;
}


