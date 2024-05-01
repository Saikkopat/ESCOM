#include <stdio.h>

int main () {
    char nom[20];
    char ape[20];
    char codP[5];
    printf("Ingresa:\n");
    printf(" Nombre: ");
    scanf("%s", nom);
    printf(" Apellido: ");
    scanf("%s", ape);
    printf(" Código Postal: ");
    scanf("%s", codP);

    printf("\n %s, %s, %s.\n", ape, nom, codP);

    return 0;
}