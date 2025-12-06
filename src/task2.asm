global asm_task2
extern printf
extern scanf

section .data
    msg_prompt db "Enter your name: ", 0
    fmt_in db "%s", 0
    msg_welcome db "Welcome %s", 10, 0
    msg_error db "Error: Number must be between 50 and 100", 10, 0

section .bss
    name_buffer resb 100

section .text
asm_task2:
    enter 0,0
    pusha

    mov ecx, [ebp+8]

    cmp ecx, 50
    jle error_label
    cmp ecx, 100
    jge error_label

    push msg_prompt
    call printf
    add esp, 4

    push name_buffer
    push fmt_in
    call scanf
    add esp, 8

    mov ecx, [ebp+8]

loop_start:
    pusha

    push name_buffer
    push msg_welcome
    call printf
    add esp, 8

    popa
    loop loop_start
    jmp end_label

error_label:
    push msg_error
    call printf
    add esp, 4

end_label:
    popa
    leave
    ret
