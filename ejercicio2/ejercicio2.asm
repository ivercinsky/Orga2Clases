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
		cmp r8, 0 ; While contador > 0 do
		je .end
		mov rax, 4
		mov rbx, 1
		mov rcx, msg
		mov rdx, largo ; Print MSG
		push r8 ;A -->la direccion de memoria a la que apunta la pila ES multiplo de 16.
		; pusheo r8 para que ningun otro proceso me modifique mi valor del contador. Ya que no es de la convencion C, con lo cual cualquiera puede modificarlo
		;sin preservarlo.
		int 0x80 ; Print MSG
		dec byte [msg+largo - 2] ;modificar el numero y jmp a loop
		pop r8 ; lo recupero de la pila
		dec r8 ; contador--
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

