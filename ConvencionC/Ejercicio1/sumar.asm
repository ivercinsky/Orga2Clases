global sumar
section .text
	sumar:
		mov rax, rdi
		add rax, rsi
		ret
