/*	Ejemplo ej06.c
Entrada: una secuencia de caracter que incluya el caracter q.

*/
#include <stdio.h>
void frena_con_q();
void main()
{
	frena_con_q();
}
void frena_con_q()
{
	putchar('.');
	if(getchar() < 'q')
		frena_con_q();
}