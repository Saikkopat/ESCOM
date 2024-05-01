#include <stdio.h>
#include <math.h>
int main() {
	int a, b, c;
	float x1, x2, part;
	printf("Enter the values of A, B and C:\n A: ");
	scanf("%d", &a);
	printf(" B: ");
	scanf("%d", &b);
	printf(" C: ");
	scanf("%d", &c);
	part = (b * b) - (4 * a * c);
	if(part > 0) {
		x1 = ((b * -1) + sqrt(part)) / (2 * a);
		x2 = ((b * -1) - sqrt(part)) / (2 * a);
		printf("Solutions are:\n  X1 : %f\n  X2 : %f\n", x1, x2);
	}
	else {
		printf("Solutions are not REAL!\n");
	}
}