/*Tarea t03.c
	Modifique el programa ej07.c para que imprima solo uno de cada dos caracteres.
	
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
		putchar(tecla);
		impr(tecla - 2);
	}
}