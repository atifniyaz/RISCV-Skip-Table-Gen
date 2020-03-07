#include<stdio.h>

int main(int argc, char** argv)
{
	int x [10] = {0,2,3,0,0,4,5,9,0,0};
	int y [10] = {5,3,0,0,0,4,3,0,2,0};
	int out [100] = {0};
	int i, j;

	for (i = 0; i < 10; i++) {
		for (j = 0; j < 10; j++) {
			out[i*10+j] = x[i]*y[j];
		}
	}

	for (i = 0; i < 100; i++) {
		printf("%02d ", out[i]);
		if (i % 10 == 9) {
			printf("\n");
		}
	}
	return 0;
}
