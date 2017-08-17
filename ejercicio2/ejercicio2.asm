section .data
	msg: DB 'en 10 me voy ... 9',10
	largo: EQU $ - msg

	msgChau: DB 'CHAU!!!!', 10
	largoChau: EQU $ - msgChau

section .bss
	contador: RESB 1
global _start
section .text
	_start:
		mov byte [contador], 10 ; Inicializo mi contador
	.loop:
		cmp byte [contador], 0 ; While contador > 0 do
		je .end
		mov rax, 4
		mov rbx, 1
		mov rcx, msg
		mov rdx, largo ; Print msg
		int 0x80
		dec byte [msg+largo - 2] ;modificar el numero y jmp a loop
		dec byte [contador] ; contador--
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

