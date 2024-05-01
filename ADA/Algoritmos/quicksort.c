#include <stdio.h>

int lee (int *);
void imprime (int *);
void intercambia (int *, int *);
void * pivote (int *, int *);
void quicks (int *, int *);

void main ()
{
	int vec[255];
	quicks(vec, vec + lee(vec) - 1);
	imprime(vec);
} 
int lee (int * vec)
{
	scanf("%d", vec);
	if(*vec == 0)
		return (0);
	else
		return (lee(vec + 1) +1);
}

void intercambia(int * i, int * d)
{
	int aux;
	aux = *i;
	*i = *d;
	*d = aux;
}

void imprime(int * vec)
{
	if(*vec == 0)
		;
	else
	{
		printf("%d", *vec);
		imprime(vec + 1);
	}
}

void quicks(int * izq, int * der)
{
	int * apu;
	if(izq >= der)
		;
	else
	{
		if(der == (izq + 1))
			if(*izq > *der)
				intercambia(izq, der);
			else
				;
		else
		{
			apu = pivote(izq, der);
			quicks(izq, apu - 1);
			quicks(apu + 1, der);
		}
	}
}