/* Write GPU code to perform the step(s) involved in counting sort. 
 Add additional kernels and device functions as needed. */

__global__ void histogram_generation_kernel(int *input_data, int *histogram, 
                                int num_elements, int histogram_size)
{
    /*STEP#1: Generate the histogram from the input data in shared memory*/

    __shared__ unsigned int shared_histogram[HISTOGRAM_SIZE];

    /* Initialize shared memory */ 
    if(threadIdx.x < histogram_size)
        shared_histogram[threadIdx.x] = 0;
    
    __syncthreads();

    int offset = blockIdx.x * blockDim.x + threadIdx.x;
    int stride = blockDim.x * gridDim.x;

    
    while (offset < num_elements) {
        atomicAdd(&shared_histogram[input_data[offset]], 1);
        offset += stride;
    }
    __syncthreads();

    /*Transfer histogram to global memory*/
    if (threadIdx.x < histogram_size) 
        atomicAdd(&histogram[threadIdx.x], shared_histogram[threadIdx.x]);

    return;
}


//n - histogram size, scan_out is used for testin - remove on final submission
__global__ void counting_sort_kernel(int *sorted_array, int *histogram, int n)
{   
    //STEP #2 - perform a scan
    __shared__ int scan_shared[2*HISTOGRAM_SIZE];

    int tid = threadIdx.x;
    int offset;

    /* Indices for the ping-pong buffers */
    int pout = 0;
    int pin = 1;


    //inclusive scan
    scan_shared[pout * n + tid] = histogram[tid];

    /*Perform Inclusive Scan*/
    for (offset = 1; offset < n; offset *= 2) {
        pout = 1 - pout;
        pin  = 1 - pout;
        __syncthreads();

        //coppies array to the second half of scanned array
        scan_shared[pout * n + tid] = scan_shared[pin * n + tid]; 

        if (tid >= offset)
            scan_shared[pout * n + tid] += scan_shared[pin * n + tid - offset];
    }

    __syncthreads();

    
    //STEP#3 - generate the sorted array
    int j;
    int start_idx = 0;

    if(tid > 0)
        start_idx = scan_shared[tid-1];

    // printf("Histogram = %d, Scanned IDX = %d, Bin = %d \n",  histogram[tid],start_idx,tid);
    for (j = start_idx; j < (start_idx+histogram[tid]); j++)
        sorted_array[j] = tid;
    
    
    return;
}