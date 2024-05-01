/*
	Autor: González Cárdenas Ángel Aquilez 1CV7 2016630152
	5) Calcular e imprimir la tabla de multiplicar de un número cualquiera. Imprimir el multiplicando, el multiplicador y el producto.
*/
#include <stdio.h>
int main () {
	int num, cont;
	printf("Ingresa el numero a multiplicar: ");
	scanf("%d", &num);
	for(cont = 1; cont <= 10; cont++)
		printf("\t%d x %d = %d \n", num, cont, num * cont);
	return 0;
}