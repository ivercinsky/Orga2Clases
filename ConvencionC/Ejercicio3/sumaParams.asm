section .data

global suma

section .text
	suma:
		mov rax, rdi
		sub rax, rsi
		add rax, rdx
		sub rax, rcx
		add rax, r8
		sub rax, r9
		add rsp,8
		pop rdi
		add rax, rdi
		pop rdi
		sub rax, rdi
		sub rsp, 24
		ret
