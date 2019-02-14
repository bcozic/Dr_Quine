%define SYSCALL(nb)		0x2000000 | nb
%define OPEN			5
%define CLOSE			6
%define O_CREAT			0x0200
%define O_RDWR			0x0002
%define S_IWUSR			0x0080
%define S_IRUSR			0x0100

section .data
	s:
		.s db "%cdefine SYSCALL(nb)		0x2000000 | nb%c%cdefine OPEN			5%c%cdefine CLOSE			6%c%cdefine O_CREAT			0x0200%c%cdefine O_RDWR			0x0002%c%cdefine S_IWUSR			0x0080%c%cdefine S_IRUSR			0x0100%c%csection .data%c	s:%c		.s db %c%s%c, 0%c		.asm_file_raw db %cSully_%cd.s%c,0%c		.compilation1_raw db %cnasm -f macho64 Sully_%cd.s -o obj/Sully_%cd.o%c, 0%c		.compilation2_raw db %cgcc -lSystem -o Sully_%cd obj/Sully_%cd.o%c, 0%c		.execution_raw db %c./Sully_%cd%c, 0%c%csection .bss%c	i:%c		.asm_file resb 32%c		.compilation1 resb 128%c		.compilation2 resb 128%c		.execution resb 32%c%csection .text%c	global start%c	global _main%c	extern _dprintf%c	extern _sprintf%c	extern _system%c%cstart:%c	call _main%c	ret%c%c_main:%c	push rbp%c	mov rbp, rsp%c	push rbx%c	sub rsp, 0x558%c	mov rbx, %d%c	cmp rbx, 0x7FFFFFFF%c	jg return_sully%c	test rbx, rbx%c	jle return_sully%c	dec rbx%c	lea rdi, [rel i.asm_file]%c	lea rsi, [rel s.asm_file_raw]%c	mov rdx, rbx%c	call _sprintf%c	lea rdi, [rel i.compilation1]%c	lea rsi, [rel s.compilation1_raw]%c	mov rdx, rbx%c	mov rcx, rbx%c	call _sprintf%c	lea rdi, [rel i.compilation2]%c	lea rsi, [rel s.compilation2_raw]%c	mov rdx, rbx%c	mov rcx, rbx%c	call _sprintf%c	lea rdi, [rel i.execution]%c	lea rsi, [rel s.execution_raw]%c	mov rdx, rbx%c	call _sprintf%c	lea rdi, [rel i.asm_file]%c	mov rsi, O_CREAT | O_RDWR%c	mov rdx, S_IWUSR | S_IRUSR%c	mov rax, SYSCALL(OPEN)%c	syscall%c	jc end_sully%c	mov QWORD [rbp-8], rax%c	mov rdi, rax%c	lea rsi, [rel s.s]%c	mov rdx, 37%c	mov rcx, 10%c	mov r8, 37%c	mov r9, 10%c	xor rax, rax%c	mov r10, 170%cret_line:%c	mov QWORD [rsp+rax], 10%c	dec r10%c	add rax, 8%c	test r10, r10%c	jne ret_line%c	mov QWORD [rsp], 37%c	mov QWORD [rsp+0x10], 37%c	mov QWORD [rsp+0x20], 37%c	mov QWORD [rsp+0x30], 37%c	mov QWORD [rsp+0x40], 37%c	mov QWORD [rsp+0x68], 34%c	lea r11, [rel s.s]%c	mov QWORD [rsp+0x70], r11%c	mov QWORD [rsp+0x78], 34%c	mov QWORD [rsp+0x88], 34%c	mov QWORD [rsp+0x90], 37%c	mov QWORD [rsp+0x98], 34%c	mov QWORD [rsp+0xa8], 34%c	mov QWORD [rsp+0xb0], 37%c	mov QWORD [rsp+0xb8], 37%c	mov QWORD [rsp+0xc0], 34%c	mov QWORD [rsp+0xd0], 34%c	mov QWORD [rsp+0xd8], 37%c	mov QWORD [rsp+0xe0], 37%c	mov QWORD [rsp+0xe8], 34%c	mov QWORD [rsp+0xf8], 34%c	mov QWORD [rsp+0x100], 37%c	mov QWORD [rsp+0x108], 34%c	mov QWORD [rsp+0x1d8], rbx%c	call _dprintf%c	lea rdi, [rel i.compilation1]%c	call _system%c	lea rdi, [rel i.compilation2]%c	call _system%c	lea rdi, [rel i.execution]%c	call _system%c	mov rdi, QWORD [rbp-8]%c	mov rax, SYSCALL(CLOSE)%c	syscall%c	jc end_sully%creturn_sully:%c	xor rax, rax%cend_sully:%c	add rsp, 0x558%c	pop rbx%c	leave%c	ret%c", 0
		.asm_file_raw db "Sully_%d.s",0
		.compilation1_raw db "nasm -f macho64 Sully_%d.s -o obj/Sully_%d.o", 0
		.compilation2_raw db "gcc -lSystem -o Sully_%d obj/Sully_%d.o", 0
		.execution_raw db "./Sully_%d", 0

section .bss
	i:
		.asm_file resb 32
		.compilation1 resb 128
		.compilation2 resb 128
		.execution resb 32

section .text
	global start
	global _main
	extern _dprintf
	extern _sprintf
	extern _system

start:
	call _main
	ret

_main:
	push rbp
	mov rbp, rsp
	push rbx
	sub rsp, 0x558
	mov rbx, 5
	cmp rbx, 0x7FFFFFFF
	jg return_sully
	test rbx, rbx
	jle return_sully
	dec rbx
	lea rdi, [rel i.asm_file]
	lea rsi, [rel s.asm_file_raw]
	mov rdx, rbx
	call _sprintf
	lea rdi, [rel i.compilation1]
	lea rsi, [rel s.compilation1_raw]
	mov rdx, rbx
	mov rcx, rbx
	call _sprintf
	lea rdi, [rel i.compilation2]
	lea rsi, [rel s.compilation2_raw]
	mov rdx, rbx
	mov rcx, rbx
	call _sprintf
	lea rdi, [rel i.execution]
	lea rsi, [rel s.execution_raw]
	mov rdx, rbx
	call _sprintf
	lea rdi, [rel i.asm_file]
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
	mov r10, 170
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
	mov QWORD [rsp+0x90], 37
	mov QWORD [rsp+0x98], 34
	mov QWORD [rsp+0xa8], 34
	mov QWORD [rsp+0xb0], 37
	mov QWORD [rsp+0xb8], 37
	mov QWORD [rsp+0xc0], 34
	mov QWORD [rsp+0xd0], 34
	mov QWORD [rsp+0xd8], 37
	mov QWORD [rsp+0xe0], 37
	mov QWORD [rsp+0xe8], 34
	mov QWORD [rsp+0xf8], 34
	mov QWORD [rsp+0x100], 37
	mov QWORD [rsp+0x108], 34
	mov QWORD [rsp+0x1d8], rbx
	call _dprintf
	lea rdi, [rel i.compilation1]
	call _system
	lea rdi, [rel i.compilation2]
	call _system
	lea rdi, [rel i.execution]
	call _system
	mov rdi, QWORD [rbp-8]
	mov rax, SYSCALL(CLOSE)
	syscall
	jc end_sully
return_sully:
	xor rax, rax
end_sully:
	add rsp, 0x558
	pop rbx
	leave
	ret
