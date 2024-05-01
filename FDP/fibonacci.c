#include <stdio.h>
int main() {
	int fn, f1, f2, r;
	f1 = 0;
	f2 = 1;
	printf("Enter a number to display Fibonacci series: ");
	scanf("%d", &fn);
	for(int i=0; i<=fn; i++){
		printf("%d, ", f1);
		r = f1 + f2;
		f1 = f2;
		f2 = r;
	}
	printf("\n");
}