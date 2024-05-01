/*
  Autor: Gonzlez Cardenas Angel Aquilez, grupo 1CM8.
  Siguiendo las Condiciones Simples. Realice un seudocódigo y programa en C, que solicite un numero, si este es negativo entonces lo convierta en positivo.
*/
#include <stdio.h>
int main() {
	int num;
	printf(" Ingresa un número: ");
	scanf("%d", &num);
	if(num < 0)
		num *= -1;
	printf("\n  El número es: %d.\n\n", num);
	return 0;
}