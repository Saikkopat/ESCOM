/*
	Autor: González Cárdenas Ángel Aquilez 1CV7 2016630152
	2) Leer 20 números e imprimir cuantos son positivos, cuantos negativos y cuantos neutros.
*/

#include <stdio.h>
int main () {
	int cont, caja[20], p, n, z;
	cont = 0;
	p = 0;
	z = 0;
	n = 0;
	for(cont = 0; cont < 20; cont++) {
		scanf("%d", &caja[cont]);
		if(caja[cont] < 0)
			n++;
		else
			if(caja[cont] == 0)
					z++;
			else
					p++;
	}
	printf("Ingresaste %d negativos, %d positivos y %d ceros.\n", n, p, z);
	return 0;
}