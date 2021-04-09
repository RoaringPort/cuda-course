#include <stdio.h>

__global__ void hello_cuda() {
	printf("Hello Cuda!\n");
}

int main() {

	dim3 block(4);
	dim3 grid(8);

	hello_cuda<<<grid, block>>>();;
	cudaDeviceSynchronize();

	cudaDeviceReset();
	return 0;
}
