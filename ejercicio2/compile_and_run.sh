rm -f ejercicio2 || true
nasm -f elf64 -g -F DWARF ejercicio2.asm
ld -o ejercicio2 ejercicio2.o
./ejercicio2
