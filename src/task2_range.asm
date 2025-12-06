global asm_range_sum

section .bss
    data_buffer resd 100

section .text
asm_range_sum:
    enter 0, 0
    pusha

    xor ecx, ecx

init_data:
    mov eax, ecx
    add eax, 1
    mov [data_buffer + ecx*4], eax
    inc ecx
    cmp ecx, 100
    jl init_data

    mov ebx, [ebp+8]
    mov edx, [ebp+12]

    cmp ebx, 1
    jl bad_input
    cmp edx, 100
    jg bad_input
    cmp ebx, edx
    jg bad_input

    mov ecx, ebx
    sub ecx, 1
    xor eax, eax

calc_sum:
    add eax, [data_buffer + ecx*4]
    inc ecx
    cmp ecx, edx
    jl calc_sum

    mov [ebp-4], eax
    popa
    mov eax, [ebp-4]
    leave
    ret

bad_input:
    popa
    mov eax, -1
    leave
    ret
