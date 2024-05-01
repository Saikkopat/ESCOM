/*	Ejemplo ej08.c

*/
#include <stdio.h>
void impr(char);
void main()
{
	impr(getchar());
}
void impr(char tecla)
{
	if(tecla <= 'z')
	{
		putchar(tecla);
		impr(tecla + 1);
	}
}