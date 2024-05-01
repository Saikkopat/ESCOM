/*
	Autor: González Cárdenas Ángel Aquilez 1CV7 2016630152
	1) Leer 10 números e imprimir solamente los números positivos
*/

#include <stdio.h>
int main () {
	int cont, caja[10];
	cont = 0;
	for(cont = 0; cont < 10; cont++)
		scanf("%d", &caja[cont]);
	for(cont = 0; cont < 10; cont++)
		if(caja[cont] % 2)
			printf("%d. %d\n", cont, caja[cont]);
	return 0;
}