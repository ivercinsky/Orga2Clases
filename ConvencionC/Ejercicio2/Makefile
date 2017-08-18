all: clean build compile
clean:
	rm -f *.o
	rm -f imprime
build: imprime.asm
	nasm -f elf64 imprime.asm -o imprime.o
compile: imprime.c
	gcc -o imprime imprime.c imprime.o
