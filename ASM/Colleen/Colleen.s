section .data
	s:
		.s db "section .data%c	s:%c		.s db %c%s%c, 0%c%csection .text%c	global start%c	global _main%c	extern _printf%c%cstart:%c	call _main%c	ret%c%ccomment%c_main:%c	push rbp%c	mov rbp, rsp%c	sub rsp, 0x140%c%ccomment%c	lea rdi, [rel s.s]%c	mov rsi, 10%c	mov rdx, 10%c	mov rcx, 34%c	lea r8, [rel s.s]%c	mov r9, 34%c	xor rax, rax%c	mov r10, 40%cret_line:%c	mov QWORD [rsp+rax], 10%c	dec r10%c	add rax, 8%c	test r10, r10%c	jne ret_line%c	mov QWORD [rsp+80], 59%c	mov QWORD [rsp+128], 59%c	call _printf%c	add rsp, 0x140%c	xor rax, rax%c	leave%c	ret", 0

section .text
	global start
	global _main
	extern _printf

start:
	call _main
	ret
;comment
_main:
	push rbp
	mov rbp, rsp
	sub rsp, 0x140
;comment
	lea rdi, [rel s.s]
	mov rsi, 10
	mov rdx, 10
	mov rcx, 34
	lea r8, [rel s.s]
	mov r9, 34
	xor rax, rax
	mov r10, 40
ret_line:
	mov QWORD [rsp+rax], 10
	dec r10
	add rax, 8
	test r10, r10
	jne ret_line
	mov QWORD [rsp+80], 59
	mov QWORD [rsp+128], 59
	call _printf
	add rsp, 0x140
	xor rax, rax
	leave
	ret