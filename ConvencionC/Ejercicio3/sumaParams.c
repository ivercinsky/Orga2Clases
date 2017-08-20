#include <stdio.h>
extern int suma(int a, int b, int c, int d, int e, int f, int g, int h);

int main() {
	printf("La suma de %d-%d+%d-%d+%d-%d+%d-%d = %d\n",1,2,3,4,5,6,7,8,suma(1,2,3,4,5,6,7,8));
	return 0;
}
