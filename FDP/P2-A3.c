
#include <stdio.h>

int main() {
	int edad;
	printf(" Ingresa la edad: \n");
	scanf("%d", &edad);
	edad = 0;
	if(edad >= 0)
		printf("\n Eres mayor de edad.\n");
	else
		printf("\n Eres menor de edad.\n");
   return 0;
}