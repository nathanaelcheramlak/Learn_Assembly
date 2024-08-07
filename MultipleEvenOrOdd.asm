;Without using Functions
include 'emu8086.inc'
org 100h

.data 
    number_count dw 5
    num db dub(5)
    even_count db ?
    odd_count db ?
    
.code 
    mov cx, number_count
    mov si, offset num
    receiver: 
        print "Enter Number: "          
        mov ah, 1h            
        int 21h
        mov [si], al
        inc si
        sub al, 30h
        mov bl, 2
        div bx
        cmp ah, 0
            je even_incrementer 
        inc odd_count
        get_back:
        printn
        loop receiver
        jmp return 
        
    even_incrementer: 
        inc even_count
        jmp get_back 
        ret
        
    return:
        mov si, offset num
        mov cx, 5
        print_num:
            mov ah, 2
            mov dl, [si]
            inc si
            int 21h
            printn
            loop print_num
        
        
