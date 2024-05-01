/*
	Autor: González Cárdenas Ángel Aquilez 1CV7 2016630152
	8) Determinar cuántos hombres y cuantas mujeres se encuentran en un grupo de n personas, suponiendo que los datos son extraidos alumno por alumno.
*/

#include <stdio.h>
#include <stdlib.h>
#include <time.h>
int main () {
	int cont, ni,na, grupo;
	ni = 0;
	na = 0;
	printf("¿De cuántos alumnos es el grupo?: ");
	scanf("%d", &grupo);
	int alumnos[grupo];
	for(cont = 0; cont < grupo; cont++)
		alumnos[cont] = (rand() % (1 - 0 + 1)) + 0;
	for(cont = 0; cont < grupo; cont++) {
		printf("\t %d, %d\n", cont + 1, alumnos[cont]);
		if(alumnos[cont] == 0)
			ni++;
		else
			na++;
	}
	printf("\tHay %d niños y %d niñas en el grupo.\n", ni, na);
	return 0;
}