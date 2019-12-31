SECTION .data
msg     db      'Hello world!', 0Ah

SECTION .text
global _start

_start:
    mov     edx, 13     ; strlen
    mov     ecx, msg    ; addr
    mov     ebx, 1      ; file (STDOUT)
    mov     eax, 4      ; SYS_WRITE
    int     80h         ; interrupt

    mov     ebx, 0      ; return value
    mov     eax, 1      ; SYS_EXIT
    int     80h

