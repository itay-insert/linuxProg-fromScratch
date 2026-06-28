nasm -f elf64 entry.asm -o entry.o
nasm -f elf64 src/stdout.asm -o stdout.o
gcc -ffreestanding -fno-stack-protector \
-nostdlib -c main.c -o main.o


ld -o hello -T link.ld *.o

rm *.o
