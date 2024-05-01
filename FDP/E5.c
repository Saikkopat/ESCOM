#include <stdio.h>

int main(){
	const char *zoologico[] = {"LEON", "ELEFANTE", "JIRAFA", "FOCA", "PINGUINO", "RINOCERONTE", "PANDA", "COCODRILO", "AVESTRUZ", "LOBO"};
	int indice[10], op, i;
	printf(" Bienvenido al zoologico, tenemos a:\n");
	for(i = 0; i < 10; i++){
		printf("  %d: %s\n", i + 1, zoologico[i]);
		indice[i] = 0;
		}
	printf(" Ingresa veinte veces el numero de cualquier animal:\n");
	for(i = 0; i < 20; i++){
		printf("   #%d: ", i + 1);
		scanf("%d", &op);
		indice[op - 1] += 1;
	}
	printf("\n Seleccionaste: \n");
	for(i = 0; i < 10; i++)
		printf("  %d. %s, %d veces.\n", i + 1, zoologico[i], indice[i]);
	printf("\n");
	return 0;
}