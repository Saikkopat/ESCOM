/*	Tarea t02.c
Modifica el programa t01.c para que imprima el caracter '1' en lugar del '.'.

*/
#include <stdio.h>
void frena_con_enter();
void main()
{
	frena_con_enter();
}
void frena_con_enter()
{
	putchar('1');
	if(getchar() == '\n') 
		;
	else
		frena_con_enter();
}