all: clean build compile
clean:
	rm -f *.o
	rm -f sumaParams
build: sumaParams.asm
	nasm -f elf64 sumaParams.asm -o sumaParams.o
compile: sumaParams.c
	gcc -o sumaParams sumaParams.c sumaParams.o
