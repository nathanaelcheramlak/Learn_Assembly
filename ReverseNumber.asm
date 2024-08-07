; Learning Stack
include 'emu8086.inc'
org 100h
.data
    nums dw dub(3)
.code
    lea si, nums
    mov cx, 3
    print "Enter Number: "
    receiver:
        mov ah, 1
        int 21h
        mov [si], al
        add si, 2
        mov ax, ax
        push ax
        loop receiver
    
    mov cx, 3 
    printn
    print "Reversed: "
    rev:
        pop bx
        mov ah, 2
        mov dl, bl
        int 21h
        loop rev
    ret