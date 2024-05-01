/*
	Autor: González Cárdenas Ángel Aquilez 1CV7 2016630152
	6) Simular el comportamiento de un reloj digital, imprimiendo la hora, minutos y segundos de un día desde las 0:00:00 horas hasta las 23:59:59 horas.
*/
#include <stdio.h>
int main () {
	int seg, min, hor;
	for(hor = 0; hor < 24; hor++) 
		for(min = 0; min < 60; min++)
			for(seg = 0; seg < 60; seg++)
				printf("\t %d:%d:%d\n", hor, min, seg);
	return 0;
}