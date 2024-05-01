/*	Ejemplo tc04.c

*/
#include <stdio.h>
void des(char);
void asc(char);
void impr(char);
void main()
{
	impr(getchar());
}
void impr(char tecla)
{
	asc(tecla);
	des(tecla);
}

void des(char tecla)
{
	putchar(tecla);
	if(tecla > '0')
	{
		des(tecla - 1);
	}
}
void asc(char tecla)
{
	if(tecla > '0')
	{
		asc(tecla - 1);
		putchar(tecla - 1);
	}
}