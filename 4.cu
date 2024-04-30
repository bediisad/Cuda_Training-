#include<stdio.h>
#include<cuda.h>

__global__ void bdkernel1()
{
    printf("Hello World from GPU-1\n");
}

__global__ void bdkernel2()
{
    printf("Hello World from GPU-2\n");
}
int main()
{
    bdkernel1<<<1,1>>>();
    bdkernel2<<<1,1>>>();
    cudaDeviceSynchronize();

    printf("CPU\n");
    return 0;
}