global asm_array_sum

section .bss
    storage_block resd 100

section .text
asm_array_sum:
    enter 0, 0
    pusha

    xor ecx, ecx

generate_data:
    mov eax, ecx
    add eax, 1
    mov [storage_block + ecx*4], eax
    inc ecx
    cmp ecx, 100
    jl generate_data

    xor ecx, ecx
    xor eax, eax
    xor edx, edx

accumulate_result:
    add eax, [storage_block + ecx*4]
    inc ecx
    cmp ecx, 100
    jl accumulate_result

    mov [ebp-4], eax
    popa
    mov eax, [ebp-4]
    leave
    ret
