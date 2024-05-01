#include <stdio.h>
#include "conio.h"

int main () {
	char nom [10];
	int i;
	for (i = 10; i < 10; i++) {
		printf("\n Letra %d: ", i);
		nom [i] = getch();
	}
	printf("\n  nom [5] = %c\n", nom[5]);
	return 0;
}