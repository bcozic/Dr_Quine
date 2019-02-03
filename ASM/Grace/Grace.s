%macro BEGIN 0
section .data
s:
	.s db "%cmacro BEGIN 0%csection .data%cs:%c	.s db %c%s%c, 0%c	.file db %cGrace_kid.s%c%csection .text%c	global start%c	global _main%c	extern _dprintf%c	extern _open%c	extern _close%cSTART%c%cendmacro%c%cmacro MAIN 0%c	_main:%c		push rbp%c		mov rbp, rsp%c		sub rsp, 0x260%c		lea rdi, [rel s.file]%c		mov rsi, 513%c		call _open%c		mov QWORD [rbp-8], rax%c%ccomment%c		mov rdi, rax%c		lea rsi, [rel s.s]%c		mov rdx, 37%c		mov rcx, 10%c		mov r8, 10%c		mov r9, 10%c		xor rax, rax%c		mov r10, 76%c	ret_line:%c		mov QWORD [rsp+rax], 10%c		dec r10%c		add rax, 8%c		test r10, r10%c		jne ret_line%c		mov QWORD [rsp], 34%c		lea r11, [rel s.s]%c		mov QWORD [rsp+0x08], r11%c		mov QWORD [rsp+0x10], 34%c		mov QWORD [rsp+0x20], 34%c		mov QWORD [rsp+0x28], 34%c		mov QWORD [rsp+0x70], 37%c		mov QWORD [rsp+0x80], 37%c		mov QWORD [rsp+0xd0], 59%c		mov QWORD [rsp+0x1e8], 37%c		mov QWORD [rsp+0x1f8], 37%c		mov QWORD [rsp+0x220], 37%c		call _dprintf%c		mov rdi, QWORD [rbp-8]%c		call _close%c		add rsp, 0x260%c		xor rax, rax%c		leave%c		ret%c%cendmacro%c%cmacro START 0%c	start:%c		MAIN%c		ret%c%cendmacro%c%cBEGIN", 0
	.file db "Grace_kid.s"
section .text
	global start
	global _main
	extern _dprintf
	extern _open
	extern _close
START
%endmacro
%macro MAIN 0
	_main:
		push rbp
		mov rbp, rsp
		sub rsp, 0x260
		lea rdi, [rel s.file]
		mov rsi, 513
		call _open
		mov QWORD [rbp-8], rax
;comment
		mov rdi, rax
		lea rsi, [rel s.s]
		mov rdx, 37
		mov rcx, 10
		mov r8, 10
		mov r9, 10
		xor rax, rax
		mov r10, 76
	ret_line:
		mov QWORD [rsp+rax], 10
		dec r10
		add rax, 8
		test r10, r10
		jne ret_line
		mov QWORD [rsp], 34
		lea r11, [rel s.s]
		mov QWORD [rsp+0x08], r11
		mov QWORD [rsp+0x10], 34
		mov QWORD [rsp+0x20], 34
		mov QWORD [rsp+0x28], 34
		mov QWORD [rsp+0x70], 37
		mov QWORD [rsp+0x80], 37
		mov QWORD [rsp+0xd0], 59
		mov QWORD [rsp+0x1e8], 37
		mov QWORD [rsp+0x1f8], 37
		mov QWORD [rsp+0x220], 37
		call _dprintf
		mov rdi, QWORD [rbp-8]
		call _close
		add rsp, 0x260
		xor rax, rax
		leave
		ret
%endmacro
%macro START 0
	start:
		MAIN
		ret
%endmacro

BEGIN