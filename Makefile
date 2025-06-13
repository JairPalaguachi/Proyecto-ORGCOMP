CC=gcc
Cflags=-c -I.

convertidor: main.o funciones.o funciones.h
	$(CC) -o convertidor main.o funciones.o

main.o: main.c
	$(CC) $(Cflags) main.c

funciones.o: funciones.c
	$(CC) $(Cflags) funciones.c

.PHONY: clean
clean:
	rm *.o convertidor
