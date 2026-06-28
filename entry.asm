BITS 64
global _start
extern main
section .text.entry

_start:
call main
mov rax, 60
mov rdi, 0
syscall
