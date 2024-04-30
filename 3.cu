#include<stdio.h>
#include<cuda.h>

__global__ void bdkernel()
{
    printf("Hello World from GPU\n");
}
int main()
{
    bdkernel<<<1,1>>>();
    bdkernel<<<1,1>>>();
    bdkernel<<<1,1>>>();

    printf("CPU\n");
    return 0;
}