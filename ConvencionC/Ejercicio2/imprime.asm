extern printf

section .data
	msg: DB 'Entero %d, Real %.3f, String %s', 10, 0
	flt2: DQ 5.232
global imprime

; Ejemplo  
section .text
	imprime:
		push rbp ;D
		mov rbp, rsp
		push rbx ;A
		push r12 ;D
		push r13 ;A
		push r14 ;D
		push r15 ;A
		sub rsp, 8

		mov r12, rdi ; llega el primer parametros
		mov r13, rsi ; llega el segundo parametro
		mov rax, 1 ; no queremos imprimir xmm
		mov rdi, msg ; formato para printf
		mov rsi, r12 ; primer dato a mostrar
		mov rdx, r13 ; segundo dato a mostrar
		;movq xmm0, qword [flt2] 
		call printf

		add rsp, 8
		pop r15
		pop r14
		pop r13
		pop r12
		pop rbx
		pop rbp
		ret


		
