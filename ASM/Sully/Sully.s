%define SYSCALL(nb)		0x2000000 | nb
%define OPEN			5
%define CLOSE			6
%define O_CREAT			0x0200
%define O_RDWR			0x0002
%define S_IWUSR			0x0080
%define S_IRUSR			0x0100

section .data
	s:
		.s db "%cdefine SYSCALL(nb)		0x2000000 | nb%c%cdefine OPEN			5%c%cdefine CLOSE			6%c%cdefine O_CREAT			0x0200%c%cdefine O_RDWR			0x0002%c%cdefine S_IWUSR			0x0080%c%cdefine S_IRUSR			0x0100%c%csection .data%c	s:%c		.s db %c%s%c, 0%c		.asm_file db %cSully_X.s%c,0%c		.compilation1 db %cnasm -f macho64 Sully_X.s -o obj/Sully_X.o%c, 0%c		.compilation2 db %cgcc -lSystem -o Sully_X obj/Sully_X.o%c, 0%c		.execution db %c./Sully_X%c, 0%csection .text%c	global start%c	global _main%c	extern _dprintf%c	extern _system%c%cstart:%c	call _main%c	ret%c%c_main:%c	push rbp%c	mov rbp, rsp%c	sub rsp, 0x400%c	mov r11, '%c'%c	cmp r11, '0'%c	jle return_sully%c	cmp r11, '5'%c	jg return_sully%c	dec r11%c	mov QWORD [rbp-16], r11%c	lea rax, [rel s.asm_file]%c	mov byte [rax + 6], r11b%c	lea rax, [rel s.compilation1]%c	mov byte [rax + 22], r11b%c	mov byte [rax + 39], r11b%c	lea rax, [rel s.compilation2]%c	mov byte [rax + 22], r11b%c	mov byte [rax + 34], r11b%c	lea rax, [rel s.execution]%c	mov byte [rax + 8], r11b%c	lea rdi, [rel s.asm_file]%c	mov rsi, O_CREAT | O_RDWR%c	mov rdx, S_IWUSR | S_IRUSR%c	mov rax, SYSCALL(OPEN)%c	syscall%c	jc end_sully%c	mov QWORD [rbp-8], rax%c	mov rdi, rax%c	lea rsi, [rel s.s]%c	mov rdx, 37%c	mov rcx, 10%c	mov r8, 37%c	mov r9, 10%c	xor rax, rax%c	mov r10, 120%cret_line:%c	mov QWORD [rsp+rax], 10%c	dec r10%c	add rax, 8%c	test r10, r10%c	jne ret_line%c	mov QWORD [rsp], 37%c	mov QWORD [rsp+0x10], 37%c	mov QWORD [rsp+0x20], 37%c	mov QWORD [rsp+0x30], 37%c	mov QWORD [rsp+0x40], 37%c	mov QWORD [rsp+0x68], 34%c	lea r11, [rel s.s]%c	mov QWORD [rsp+0x70], r11%c	mov QWORD [rsp+0x78], 34%c	mov QWORD [rsp+0x88], 34%c	mov QWORD [rsp+0x90], 34%c	mov QWORD [rsp+0xa0], 34%c	mov QWORD [rsp+0xa8], 34%c	mov QWORD [rsp+0xb8], 34%c	mov QWORD [rsp+0xc0], 34%c	mov QWORD [rsp+0xd0], 34%c	mov QWORD [rsp+0xd8], 34%c	mov QWORD [rsp+0xd8], 34%c	mov r11, QWORD [rbp-16]%c	mov QWORD [rsp+0x158], r11%c	call _dprintf%c	lea rdi, [rel s.compilation1]%c	call _system%c	lea rdi, [rel s.compilation2]%c	call _system%c	lea rdi, [rel s.execution]%c	call _system%c	mov rdi, QWORD [rbp-8]%c	mov rax, SYSCALL(CLOSE)%c	syscall%c	jc end_sully%creturn_sully:%c	xor rax, rax%cend_sully:%c	add rsp, 0x400%c	leave%c	ret", 0
		.asm_file db "Sully_X.s",0
		.compilation1 db "nasm -f macho64 Sully_X.s -o obj/Sully_X.o", 0
		.compilation2 db "gcc -lSystem -o Sully_X obj/Sully_X.o", 0
		.execution db "./Sully_X", 0
section .text
	global start
	global _main
	extern _dprintf
	extern _system

start:
	call _main
	ret

_main:
	push rbp
	mov rbp, rsp
	sub rsp, 0x400
	mov r11, '5'
	cmp r11, '0'
	jle return_sully
	cmp r11, '5'
	jg return_sully
	dec r11
	mov QWORD [rbp-16], r11
	lea rax, [rel s.asm_file]
	mov byte [rax + 6], r11b
	lea rax, [rel s.compilation1]
	mov byte [rax + 22], r11b
	mov byte [rax + 39], r11b
	lea rax, [rel s.compilation2]
	mov byte [rax + 22], r11b
	mov byte [rax + 34], r11b
	lea rax, [rel s.execution]
	mov byte [rax + 8], r11b
	lea rdi, [rel s.asm_file]
	mov rsi, O_CREAT | O_RDWR
	mov rdx, S_IWUSR | S_IRUSR
	mov rax, SYSCALL(OPEN)
	syscall
	jc end_sully
	mov QWORD [rbp-8], rax
	mov rdi, rax
	lea rsi, [rel s.s]
	mov rdx, 37
	mov rcx, 10
	mov r8, 37
	mov r9, 10
	xor rax, rax
	mov r10, 120
ret_line:
	mov QWORD [rsp+rax], 10
	dec r10
	add rax, 8
	test r10, r10
	jne ret_line
	mov QWORD [rsp], 37
	mov QWORD [rsp+0x10], 37
	mov QWORD [rsp+0x20], 37
	mov QWORD [rsp+0x30], 37
	mov QWORD [rsp+0x40], 37
	mov QWORD [rsp+0x68], 34
	lea r11, [rel s.s]
	mov QWORD [rsp+0x70], r11
	mov QWORD [rsp+0x78], 34
	mov QWORD [rsp+0x88], 34
	mov QWORD [rsp+0x90], 34
	mov QWORD [rsp+0xa0], 34
	mov QWORD [rsp+0xa8], 34
	mov QWORD [rsp+0xb8], 34
	mov QWORD [rsp+0xc0], 34
	mov QWORD [rsp+0xd0], 34
	mov QWORD [rsp+0xd8], 34
	mov QWORD [rsp+0xd8], 34
	mov r11, QWORD [rbp-16]
	mov QWORD [rsp+0x158], r11
	call _dprintf
	lea rdi, [rel s.compilation1]
	call _system
	lea rdi, [rel s.compilation2]
	call _system
	lea rdi, [rel s.execution]
	call _system
	mov rdi, QWORD [rbp-8]
	mov rax, SYSCALL(CLOSE)
	syscall
	jc end_sully
return_sully:
	xor rax, rax
end_sully:
	add rsp, 0x400
	leave
	ret