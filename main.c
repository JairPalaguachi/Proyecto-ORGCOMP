#include <stdio.h>
#include <stdlib.h>
#include "funciones.h"

int main() {
    int opcion;
    char entrada[100];
    char resultado[100];
    int decimal;

    do {
        menu();
        printf("Selecciona una opción: ");
        scanf("%d", &opcion);

        switch (opcion) {
            case 1:
                printf("Ingresa un número binario: ");
                scanf("%s", entrada);
                decimal = binarioADecimal(entrada);
                if (decimal == -1) {
                    printf("Número binario inválido.\n");
                } else {
                    printf("Decimal: %d\n", decimal);
                }
                break;

            case 2:
                printf("Ingresa un número decimal: ");
                scanf("%d", &decimal);
                decimalABinario(decimal, resultado);
                printf("Binario: %s\n", resultado);
                break;

            case 3:
                printf("Ingresa un número decimal: ");
                scanf("%d", &decimal);
                decimalAHexadecimal(decimal, resultado);
                printf("Hexadecimal: %s\n", resultado);
                break;

            case 4:
                printf("Ingresa un número hexadecimal (sin 0x): ");
                scanf("%s", entrada);
                decimal = hexadecimalADecimal(entrada);
                if (decimal == -1) {
                    printf("Número hexadecimal inválido.\n");
                } else {
                    printf("Decimal: %d\n", decimal);
                }
                break;

            case 5:
                printf("Ingresa un número binario: ");
                scanf("%s", entrada);
                binarioAHexadecimal(entrada, resultado);
                printf("Hexadecimal: %s\n", resultado);
                break;

            case 6:
                printf("Ingresa un número hexadecimal (sin 0x): ");
                scanf("%s", entrada);
                hexadecimalABinario(entrada, resultado);
                printf("Binario: %s\n", resultado);
                break;

            case 0:
                printf("Saliendo...\n");
                break;

            default:
                printf("Opción no válida\n");
        }

        printf("\n");

    } while (opcion != 0);

    return 0;
}

