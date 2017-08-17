section .data
	msg: DB 'Hola Mundo!!!!', 10	; El 10 es el caracter de fin de string. No tiene nada que ver con el largo del msg
	largo: EQU $ - msg		; $ devuelve la posicion de memoria actual. msg: es la etiqueca de la direccion de memoria donde empieza el msg
					; entonces se hace la resta de la posicion apenas termina el msg y la posicion donde empieza. Y EQU lo transforma en macro
					; y finalmente definimos la etiqueta macro apuntando a ese valor.
section .rodata

section .bss

global _start
section .text
	_start:
		mov rax, 4		; 4 es el indice de la instruccion sys write
		mov rbx, 1		; 1 es stdout ( o sea el file descriptor donde vamos a escribir es la consola)
		mov rcx, msg		; en el buffer mandamos el mensaje
		mov rdx, largo		; en count mandamos el valor guardado en la posicion de memoria etiquetada por el string largo
		int 0x80		; hacemos la interrupcion al SO para decirle que escriba por consola el mensaje
		mov rax, 1		; 1 es el indice de exit
		mov rbx, 0		; sin errores
		int 0x80		; hacemos la interrupcion al SO para decirle que terminamos
	
