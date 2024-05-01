/*
	Autor: González Cárdenas Ángel Aquilez 1CV7 2016630152
	4) Suponga que se tiene un conjunto de calificaciones de un grupo de 40 alumnos. Realizar un algoritmo para calcular la calificación media y la calificación más baja de todo el grupo.
*/

#include <stdio.h>
#include <stdlib.h>
#include <time.h>
int main () {
	int cont, caja[40], menor, media;
	cont = 0;
	menor = 0;
	media = 0;
	for(cont = 0; cont < 40; cont++)
		caja[cont] = (rand() % (9 - 0 + 1)) + 1;
	menor = caja[0];
	for(cont = 0; cont < 40; cont++) {
		if(caja[cont] < menor)
			menor = caja[cont];
		media += caja[cont];
		printf("%d. %d\n", cont+1, caja[cont]);
	}
	media = media / 40;
	printf("La calificación media es de %d, y la más baja de %d.\n", media, menor);
	return 0;
}