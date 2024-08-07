include 'emu8086.inc'
org 100h

.code

    print "Enter a number: "
    mov ah, 1
    int 21h
    sub al, 30h
    mov ah, 0  
    printn  ;To skip a line
    
    mov bl, 2
    div bl  
    
    cmp ah, 0
    je even
    printn "The number is ODD"
    jmp eend
    
    even:
        printn "The number is EVEN"
        
    eend:
        ret
     