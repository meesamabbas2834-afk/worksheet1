global asm_main

section .data
    val_x dd 50
    val_y dd 40

section .text
asm_main:
    push ebp
    mov ebp, esp

    mov eax, [val_x]
    add eax, [val_y]

    pop ebp
    ret
