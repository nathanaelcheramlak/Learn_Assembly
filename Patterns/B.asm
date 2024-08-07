include 'emu8086.inc'
org 100h

.data
    row_count dw 6
    letter dw 97 ; ASCII form
.code
    mov cx, row_count
    print_row:
        mov dx, 97 ; Letter 'a'
        inc letter ; Increment boundary
        
        print_letter:
            mov ax, dx
            putc al
            inc dx
        cmp ax, letter
        jl print_letter
        printn
        loop print_row
