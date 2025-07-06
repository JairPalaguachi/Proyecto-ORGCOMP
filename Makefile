CC=gcc
Cflags=-c -I.

convertidor: main.o
	$(CC) -o convertidor main.o

main.o: main.c
	$(CC) $(Cflags) main.c

.PHONY: clean
clean:
	rm *.o convertidor
