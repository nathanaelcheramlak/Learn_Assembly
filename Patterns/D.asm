include 'emu8086.inc'
org 100h

.data
    row_count dw 6
    space_count dw 0
    letter dw 97
    max_letter dw 102 
    
.code
    print_row:
        cmp space_count, 0
        jle P
        mov cx, space_count
        print_space:
            print ' '
        
        loop print_space
        P:
        mov ax, letter
        print_letter:
            
            putc al
            inc ax
        mov bx, max_letter
        cmp bx, ax
        jge print_letter
        
        inc letter
        inc space_count
        
        printn
        dec row_count
        cmp row_count, 0
        je return
        loop print_row
        
    return:
        ret