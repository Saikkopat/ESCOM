

#include <stdio.h>

int main (){
	int valorCompra, descuento, valorFinal;
	printf(" Ingrese el valor de compra: ");
	scanf("%d", &valorCompra);
	descuento = 0;
//	valorFinal = valorCompra;
	valorFinal = 0;
	if(valorCompra >= 1000) {
		descuento = valorCompra * .25;
		valorFinal = valorCompra - descuento;
		printf("\n Descuento del 25%% aplicado: $%d.\n", descuento);
	}
	printf("\n El valor de su compra es de: $%d.\n\n", valorFinal);
	return 0;
}