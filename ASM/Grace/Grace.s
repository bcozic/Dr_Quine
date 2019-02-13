%define SYSCALL(nb)		0x2000000 | nb
%macro BEGIN 0
	section .data
	s:
		.s db "%cdefine SYSCALL(nb)		0x2000000 | nb%c%cmacro BEGIN 0%c	section .data%c	s:%c		.s db %c%s%c, 0%c		.file db %cGrace_kid.s%c%c	section .text%c	global start%c	global _main%c	extern _dprintf%c%c	start:%c		MAIN%c		ret%c%cendmacro%c%cmacro MAIN 0%c	_main:%c		push rbp%c		mov rbp, rsp%c		sub rsp, 0x260%c		lea rdi, [rel s.file]%c		mov rsi, 0x201%c		mov rdx, 0x180%c		mov rax, SYSCALL(5)%c		syscall%c		jc end_grace%c		mov QWORD [rbp-8], rax%c%ccomment%c		mov rdi, rax%c		lea rsi, [rel s.s]%c		mov rdx, 37%c		mov rcx, 10%c		mov r8, 37%c		mov r9, 10%c		xor rax, rax%c		mov r10, 76%c	ret_line:%c		mov QWORD [rsp+rax], 10%c		dec r10%c		add rax, 8%c		test r10, r10%c		jne ret_line%c		mov QWORD [rsp+0x10], 34%c		lea r11, [rel s.s]%c		mov QWORD [rsp+0x18], r11%c		mov QWORD [rsp+0x20], 34%c		mov QWORD [rsp+0x30], 34%c		mov QWORD [rsp+0x38], 34%c		mov QWORD [rsp+0x88], 37%c		mov QWORD [rsp+0x98], 37%c		mov QWORD [rsp+0x100], 59%c		mov QWORD [rsp+0x220], 37%c		call _dprintf%c		mov rdi, QWORD [rbp-8]%c		mov rax, SYSCALL(6)%c		syscall%c		jc end_grace%c		xor rax, rax%c	end_grace:%c		add rsp, 0x260%c		leave%c		ret%c%cendmacro%c%cBEGIN", 0
		.file db "Grace_kid.s"
	section .text
	global start
	global _main
	extern _dprintf

	start:
		MAIN
		ret
%endmacro
%macro MAIN 0
	_main:
		push rbp
		mov rbp, rsp
		sub rsp, 0x260
		lea rdi, [rel s.file]
		mov rsi, 0x201
		mov rdx, 0x180
		mov rax, SYSCALL(5)
		syscall
		jc end_grace
		mov QWORD [rbp-8], rax
;comment
		mov rdi, rax
		lea rsi, [rel s.s]
		mov rdx, 37
		mov rcx, 10
		mov r8, 37
		mov r9, 10
		xor rax, rax
		mov r10, 76
	ret_line:
		mov QWORD [rsp+rax], 10
		dec r10
		add rax, 8
		test r10, r10
		jne ret_line
		mov QWORD [rsp+0x10], 34
		lea r11, [rel s.s]
		mov QWORD [rsp+0x18], r11
		mov QWORD [rsp+0x20], 34
		mov QWORD [rsp+0x30], 34
		mov QWORD [rsp+0x38], 34
		mov QWORD [rsp+0x88], 37
		mov QWORD [rsp+0x98], 37
		mov QWORD [rsp+0x100], 59
		mov QWORD [rsp+0x220], 37
		call _dprintf
		mov rdi, QWORD [rbp-8]
		mov rax, SYSCALL(6)
		syscall
		jc end_grace
		xor rax, rax
	end_grace:
		add rsp, 0x260
		leave
		ret
%endmacro

BEGIN