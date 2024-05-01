/*
	Autor: González Cárdenas Ángel Aquilez 1CV7 2016630152
	3) Leer 15 números negativos y convertirlos a positivos e imprimir la suma de dichos números.
*/

#include <stdio.h>
int main () {
	int cont, caja[15], res;
	cont = 0;
	res = 0;
	for(cont = 0; cont < 15; cont++) {
		scanf("%d", &caja[cont]);
		if(caja[cont] < 0)
			res += caja[cont] * -1;
	}
	printf("La suma de los quince números es: %d\n", res);
	return 0;
}