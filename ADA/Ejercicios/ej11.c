/*	Ejemplo ej11.c

*/
#include <stdio.h>
void impr(char);
void main()
{
	impr(getchar());
}
void impr(char tecla)
{
	if(tecla > '0')
	{
		impr(tecla - 1);
		putchar(tecla);
		impr(tecla - 1);
	}
}