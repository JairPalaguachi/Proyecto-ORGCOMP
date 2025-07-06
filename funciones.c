#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "funciones.h"

// Mostrar menú
void menu() {
    printf("=== Conversor ===\n");
    printf("1. Binario a Decimal\n");
    printf("2. Decimal a Binario\n");
    printf("3. Decimal a Hexadecimal\n");
    printf("4. Hexadecimal a Decimal\n");
    printf("5. Binario a Hexadecimal\n");
    printf("6. Hexadecimal a Binario\n");
    printf("0. Salir\n");
}

// Convierte binario a decimal
int binarioADecimal(const char *binario) {
    int decimal = 0;
    while (*binario) {
        if (*binario != '0' && *binario != '1') return -1; // Validar binario
        decimal = decimal * 2 + (*binario - '0');
        binario++;
    }
    return decimal;
}

// Convierte decimal a binario (cadena)
void decimalABinario(int decimal, char *resultado) {
    if (decimal == 0) {
        resultado[0] = '0';
        resultado[1] = '\0';
        return;
    }

    char temp[33];
    int i = 0;

    while (decimal > 0) {
        temp[i++] = (decimal % 2) + '0';
        decimal /= 2;
    }
    // Invertir la cadena
    for (int j = 0; j < i; j++) {
        resultado[j] = temp[i - j - 1];
    }
    resultado[i] = '\0';
}

// Convierte decimal a hexadecimal (cadena)
void decimalAHexadecimal(int decimal, char *resultado) {
    if (decimal == 0) {
        resultado[0] = '0';
        resultado[1] = '\0';
        return;
    }

    char temp[33];
    int i = 0;

    while (decimal > 0) {
        int residuo = decimal % 16;
        if (residuo < 10) temp[i++] = '0' + residuo;
        else temp[i++] = 'A' + (residuo - 10);
        decimal /= 16;
    }
    // Invertir la cadena
    for (int j = 0; j < i; j++) {
        resultado[j] = temp[i - j - 1];
    }
    resultado[i] = '\0';
}

// Convierte hexadecimal a decimal
int hexadecimalADecimal(const char *hexadecimal) {
    int decimal = 0;
    while (*hexadecimal) {
        char c = *hexadecimal;
        int valor;
        if (c >= '0' && c <= '9') valor = c - '0';
        else if (c >= 'A' && c <= 'F') valor = c - 'A' + 10;
        else if (c >= 'a' && c <= 'f') valor = c - 'a' + 10;
        else return -1; // inválido
        decimal = decimal * 16 + valor;
        hexadecimal++;
    }
    return decimal;
}

// Convierte binario a hexadecimal (usa binarioADecimal y decimalAHexadecimal)
void binarioAHexadecimal(const char *binario, char *resultado) {
    int decimal = binarioADecimal(binario);
    if (decimal == -1) {
        strcpy(resultado, "Error");
        return;
    }
    decimalAHexadecimal(decimal, resultado);
}

// Convierte hexadecimal a binario (usa hexadecimalADecimal y decimalABinario)
void hexadecimalABinario(const char *hexadecimal, char *resultado) {
    int decimal = hexadecimalADecimal(hexadecimal);
    if (decimal == -1) {
        strcpy(resultado, "Error");
        return;
    }
    decimalABinario(decimal, resultado);
}

