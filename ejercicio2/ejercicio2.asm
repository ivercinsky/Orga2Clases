section .data
	msg: DB 'en 10 me voy ... 9',10
	largo: EQU $ - msg

	msgChau: DB 'CHAU!!!!', 10
	largoChau: EQU $ - msgChau

global _start
section .text
	_start:
		push rbp ; D --> la direccion de memoria a la que apunta la pila no es multiplo de 16.
		mov rbp, rsp
		mov r8, 10 ; Inicializo mi contador
	.loop:
		cmp r8, 0
		je .end
		mov rax, 4
		mov rbx, 1
		mov rcx, msg
		mov rdx, largo
		push r8 ;A -->la direccion de memoria a la que apunta la pila ES multiplo de 16.
		int 0x80
		dec byte [msg+largo - 2] ;modificar el numero y jmp a loop
		pop r8
		dec r8
		jmp .loop
	.end:
		mov rax, 4
		mov rbx, 1
		mov rcx, msgChau
		mov rdx, largoChau
		int 0x80
		mov rax, 1
		mov rbx, 0
		int 0x80

