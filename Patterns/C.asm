include 'emu8086.inc'
org 100h

.data
    row_count dw 5
    space_count dw 0
    num dw 49
    max_num dw 53 
    
.code
    print_row:
        cmp space_count, 0
        jle P
        mov cx, space_count
        print_space:
            print ' '
        
        loop print_space
        P:
        mov ax, num
        print_num:
            
            putc al
            inc ax
        mov bx, max_num
        cmp bx, ax
        jge print_num
        
        inc num
        inc space_count
        
        printn
        dec row_count
        cmp row_count, 0
        je return
        loop print_row
        
    return:
        ret