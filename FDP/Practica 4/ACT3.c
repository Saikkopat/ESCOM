#include <stdio.h>

int main () {
    char ar[] = "";
    int i = 0;
    printf("Ingresa los carácteres: ");
    scanf("%[^\n]", ar);
    while(ar[i] == '\0') {
        printf("%d : %c", ar[i], ar[i]);
        i++;
    }
    printf("\n");
    return 0;
}