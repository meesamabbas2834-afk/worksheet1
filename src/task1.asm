global asm_main

section .text

asm_main:
    push ebp
    mov ebp, esp

    mov eax, 15
    add eax, 15

    pop ebp
    ret
