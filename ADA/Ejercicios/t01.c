/*	Tarea t01.c
Reescribe el programa ej06.c de modo que la funcion recursiva se detenga al encontrar el retorno de carro '\n'.

*/
#include <stdio.h>
void frena_con_enter();
void main()
{
	frena_con_enter();
}
void frena_con_enter()
{
	putchar('.');
	if(getchar() == '\n') 
		;
	else
		frena_con_enter();
}