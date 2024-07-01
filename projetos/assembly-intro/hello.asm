section .data
    hello db 'Ola Mundo! - Sistemas Embarcados', 0

section .text
    global _main

_main:
    ; Get handle to stdout
    mov ecx, hello        ; Address of string
    call print_string     ; Print the string

    ; Exit program
    mov eax, 0x4C00       ; Exit system call
    int 0x21              ; DOS interrupt

print_string:
    pusha                 ; Save all registers
    mov ah, 0x09          ; DOS print string function
    int 0x21              ; DOS interrupt
    popa                  ; Restore all registers
    ret
