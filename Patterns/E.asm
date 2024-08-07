include 'emu8086.inc'
org 100h

.data
    row_count dw 5;
    col_count dw 53;
    num dw ?
.code
    mov cx, row_count
    print_row:
        mov num, 49;
        print_num:
            mov ax, num;
            putc al
            inc num
        mov bx, num
        cmp bx, col_count
        jle print_num
        dec col_count
        printn
        loop print_row