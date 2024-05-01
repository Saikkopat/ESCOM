#include <stdio.h>
/*	Ejemplo ej03.c

*/
void puntitos();
void main()
{
	puntitos();
}
void puntitos()
{
	putchar('.');
	puntitos();
}