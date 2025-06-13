#include <stdio.h>
#ifndef FUNCIONES_H
#define FUNCIONES_H

// Declaración de funciones
void menu();
int binarioADecimal(const char *binario);
void decimalABinario(int decimal, char *resultado);
void decimalAHexadecimal(int decimal, char *resultado);
int hexadecimalADecimal(const char *hexadecimal);

#endif

