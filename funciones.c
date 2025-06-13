#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>
#include "funciones.h"

void menu() {
    printf("=== Conversor ===\n");
    printf("1. Binario a Decimal\n");
    printf("2. Decimal a Binario\n");
    printf("3. Decimal a Hexadecimal\n");
    printf("4. Hexadecimal a Decimal\n");
    printf("0. Salir\n");
}

int binarioADecimal(const char *binario) {
    int decimal = 0;
    while (*binario) {
        decimal = decimal * 2 + (*binario++ - '0');
    }
    return decimal;
}

void decimalABinario(int decimal, char *resultado) {
    int i = 0;
    while (decimal > 0) {
        resultado[i++] = (decimal % 2) + '0';
        decimal /= 2;
    }
    resultado[i] = '\0';

    // Invertir la cadena
    for (int j = 0; j < i / 2; j++) {
        char temp = resultado[j];
        resultado[j] = resultado[i - j - 1];
        resultado[i - j - 1] = temp;
    }
}

void decimalAHexadecimal(int decimal, char *resultado) {
    sprintf(resultado, "%X", decimal);
}

int hexadecimalADecimal(const char *hexadecimal) {
    int decimal;
    sscanf(hexadecimal, "%x", &decimal);
    return decimal;
}

