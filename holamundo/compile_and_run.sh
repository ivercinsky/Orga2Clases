rm -f holamundo || true
nasm -f elf64 -g -F DWARF hola_mundo.asm
ld -o holamundo hola_mundo.o
./holamundo
