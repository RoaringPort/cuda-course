#include <stdio.h>

__global__ void hello_cuda() {
	printf("Hello Cuda!\n");
}

int main() {

	hello_cuda<<<2,1>>>();
	cudaDeviceSynchronize();

	cudaDeviceReset();
	return 0;
}
