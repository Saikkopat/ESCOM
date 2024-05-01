#include <stdio.h>
int main(){
	int bol;
	float cal1, cal2, cal3, cal4, cal5, cal6, Prom;
	Printf("Introduce el numero de Boleta: ");
	scanf("%d", &bol);
	printf("Introduce la calificacion de Matematicas: ");
	scanf("%f", &cal1);
	printf("Introduce la calificacion Espanol: ");
	scanf("%f", &cal2);
	printf("Introduce la calificacion de Biologia: ");
	scanf("%f", &cal3);
	printf("Introduce la calificacion de Historia: ");
	scanf("%f", &cal4);
	printf("Introduce la calificacion de taller de LR: ");
	scanf("%f", &cal5);
	printf("Introduce la calificacion de Geografia: ");
	scanf("%f", &cal6);
	Prom = (cal1 + cal2 + cal3 + cal4 + cal5) / 6;
	printf("Numero de Boleta: %d\n", bol);
	printf("El promedio es: %f.\n", Prom);
	system("pause");
	return 0;
}
