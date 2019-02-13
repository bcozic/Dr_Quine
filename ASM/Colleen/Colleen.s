section .data
	s:
		.s db "section .data%c	s:%c		.s db %c%s%c, 0%c%csection .text%c	global start%c	global _main%c	global _fnct%c	extern _printf%c%cstart:%c	call _main%c	ret%c%ccomment%c%c_fnct:%c	push rbp%c	mov rbp, rsp%c	mov QWORD [rdi+0x58], 59%c	mov QWORD [rdi+0xd0], 59%c	leave%c	ret%c%c_main:%c	push rbp%c	mov rbp, rsp%c	sub rsp, 0x200%c%ccomment%c	mov rsi, 10%c	mov rdx, 10%c	mov rcx, 34%c	lea r8, [rel s.s]%c	mov r9, 34%c	xor rax, rax%c	mov r10, 50%cret_line:%c	mov QWORD [rsp+rax], 10%c	dec r10%c	add rax, 8%c	test r10, r10%c	jne ret_line%c	mov rdi, rsp%c	call _fnct%c	lea rdi, [rel s.s]%c	call _printf%c	add rsp, 0x200%c	xor rax, rax%c	leave%c	ret%c", 0

section .text
	global start
	global _main
	global _fnct
	extern _printf

start:
	call _main
	ret
;comment

_fnct:
	push rbp
	mov rbp, rsp
	mov QWORD [rdi+0x58], 59
	mov QWORD [rdi+0xd0], 59
	leave
	ret

_main:
	push rbp
	mov rbp, rsp
	sub rsp, 0x200
;comment
	mov rsi, 10
	mov rdx, 10
	mov rcx, 34
	lea r8, [rel s.s]
	mov r9, 34
	xor rax, rax
	mov r10, 50
ret_line:
	mov QWORD [rsp+rax], 10
	dec r10
	add rax, 8
	test r10, r10
	jne ret_line
	mov rdi, rsp
	call _fnct
	lea rdi, [rel s.s]
	call _printf
	add rsp, 0x200
	xor rax, rax
	leave
	ret
