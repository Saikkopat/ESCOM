/*
	Autor: González Cárdenas Ángel Aquilez 1CV7 2016630152
	Una persona debe realizar un muestreo con 50 personas para determinar el promedio de peso de los niños, jóvenes, adultos y viejos que existen en su zona habitacional. Se determinan las categorías con base en la siguiente tabla:

	CATEGORIA	EDAD
	Niños	0-12
	Jóvenes	13-29
	Adultos	30-59
	Ancianos	60 en adelante

*/
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
int main () {
	int muestra[2][50], cont, nio, jov, adu, anc, pni, pjo, pad, pan;
	nio = 0;
	jov = 0;
	adu = 0;
	anc = 0;
	pni = 0;
	pjo = 0;
	pad = 0;
	pan = 0;
	for(cont = 0; cont < 50; cont++) {
		muestra[0][cont] = (rand() % (99 - 0 + 1)) + 1;
	}
	for(cont = 0; cont < 50; cont++) {
		muestra[1][cont] = (rand() % (120 - 0 + 1)) + 3;
	}

	for(cont = 0; cont < 50; cont++) {
		printf("\t%d: %d\n", muestra[0][cont], muestra[1][cont]);
		if (muestra[0][cont] <=12) {
			nio++;
			pni += muestra[1][cont];
		}
		else {
			if (muestra[0][cont] <=29) {
				jov++;
				pjo += muestra[1][cont];
			}
			else {
				if (muestra[0][cont] <=59) {
					adu++;
					pad += muestra[1][cont];
				}
				else {
					anc++;
					pan += muestra[1][cont];
				}
				}
		}
	}

	printf("\n\tLos pesos promedios por categorias son:\n");
	printf("\t%d Niños\t %d\n", nio, pni / nio);
	printf("\t%d Jovenes\t %d\n", jov, pjo / jov);
	printf("\t%d Adultos\t %d\n", adu, pad / adu );
	printf("\t%d Ancianos\t %d\n", anc, pan / anc);

	return 0;
}