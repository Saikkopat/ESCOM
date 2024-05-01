#include <stdio.h>
int main() {
	int A, B, op;
	float C;
	do {
	printf("Which basic operation do you want to perfom? \n");
	printf(" 1. Addition \n 2. Subtraction \n 3. Multiplication \n 4. Division \n");
	scanf("%d", &op);
	printf("Please, enter the first value: ");
	scanf("%d", &A);
	printf("Please, enter the second value: ");
	scanf("%d", &B);
	switch (op) {
		case(1):
			C = A + B;
		break;
		case(2):
			C = A - B;
		break;
		case(3):
			C = A * B;
		break;
		case(4):
			C = A / B;
		break;
		default:
			printf("Invalid option!");
		break;
	}
	printf("   Result: %f\n", C);
	printf("Do you want to perform another operation?\n 1. Yes\n 2. No\n");
	scanf("%d", &op);
	} while (op == 1);
}