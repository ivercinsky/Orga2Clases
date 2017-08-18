#include <stdio.h>

extern int sumar(int a, int b);

int main() {
	int a = 10;
	int b = 5;
	printf("La suma de %d + %d = %d\n", a, b, sumar(a,b));
	return 0;
}
