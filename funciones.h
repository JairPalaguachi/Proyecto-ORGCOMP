#ifndef FUNCIONES_H
#define FUNCIONES_H

// Muestra menú
void menu();

// Convierte número binario (string) a decimal (int)
int binarioADecimal(const char *binario);

// Convierte decimal (int) a binario (string)
void decimalABinario(int decimal, char *resultado);

// Convierte decimal (int) a hexadecimal (string)
void decimalAHexadecimal(int decimal, char *resultado);

// Convierte hexadecimal (string) a decimal (int)
int hexadecimalADecimal(const char *hexadecimal);

// Convierte binario (string) a hexadecimal (string)
void binarioAHexadecimal(const char *binario, char *resultado);

// Convierte hexadecimal (string) a binario (string)
void hexadecimalABinario(const char *hexadecimal, char *resultado);

#endif

