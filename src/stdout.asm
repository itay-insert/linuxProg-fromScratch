BITS 64
global print

section .text

print:
xor rcx, rcx
mov rsi, rdi ;address of first str character in rdi as arg1
print_loop:
cmp byte [rdi], 0
je exit
inc rcx
inc rdi
jmp print_loop
exit:
mov rdx, rcx
mov rdi, 1
mov rax, 1
syscall
ret
