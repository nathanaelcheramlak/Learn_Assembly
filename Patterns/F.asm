include 'emu8086.inc'
org 100h

.data
    row_count dw 5
    star_count dw 1
    space_count dw 5
    count dw ?
.code
    mov cx, row_count 
    
    print_row:
        mov count, cx 
        cmp space_count, 0
        je N
        mov cx, space_count
        print_space:
            print ' '
            
        loop print_space
        dec space_count
        
        mov cx, star_count
        print_star:
            print '* '
            
        loop print_star
        inc star_count
            
        printn
        dec count
        loop print_row
        
    N:
        ret