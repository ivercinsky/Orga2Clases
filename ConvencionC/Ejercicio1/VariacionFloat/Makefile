all: clean build compile
clean:
	rm -f *.o
	rm -f sumar
build: sumar.asm
	nasm -f elf64 sumar.asm -o sumar.o
compile: sumar.c
	gcc -o sumar sumar.c sumar.o
