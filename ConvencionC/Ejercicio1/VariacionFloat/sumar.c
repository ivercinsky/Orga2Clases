#include <stdio.h>

extern float sumar(float a, float b);

int main() {
	float a = 10.31;
	float b = 5.32;
	printf("La suma de %5.2f + %5.2f = %5.2f\n", a, b, sumar(a,b));
	return 0;
}
