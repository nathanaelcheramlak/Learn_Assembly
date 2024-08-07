include 'emu8086.inc'
org 100h

.data
    limit dw 49
    num dw 53
    row_count dw 5
    space_count dw 0
.code
    mov cx, row_count
    print_row:
        cmp space_count, 0
        jle print_num
        mov cx, space_count
        print_space:
            print ' '
        loop print_space

        print_num:
            mov ax, num
            putc al
            dec num  
        
        mov bx, limit
        cmp num, bx
        jge print_num

        printn
        inc space_count
        inc limit
        mov num, 53 
        dec row_count
        cmp row_count, 0
        je return
    loop print_row
    
    return:
        ret
        
            