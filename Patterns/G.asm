include 'emu8086.inc'
org 100h

.data
    row_count dw 7
    star_count dw 2
    space_count dw 7
    
    count_row dw 8  ;Inverted Variables
    count_star dw 8
    count_space dw 1

.code
    
    print_inverted: 
        mov count_row, cx 
        cmp count_star, 0
        je print_row
        mov cx, count_space
        print_space1:
            print ' '
            
        loop print_space1
        inc count_space
        
        mov cx, count_star
        print_star_inv:
            print '**'
            
        loop print_star_inv
        dec count_star
            
        printn
        dec count_row
        loop print_inverted
           
    print_row:
        mov row_count, cx 
        cmp space_count, 0 
        je return
        mov cx, space_count
        print_space:
            print ' '
            
        loop print_space
        dec space_count
        
        mov cx, star_count
        print_star:
            print '**'
            
        loop print_star
        inc star_count
            
        printn
        dec row_count
        loop print_row
        
    return:
        ret