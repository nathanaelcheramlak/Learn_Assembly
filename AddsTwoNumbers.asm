include 'emu8086.inc'
org 100h
  
.data
    num1 db ?
    num2 db ?
    sum db ?
    
.code
    mov ax, @data
    mov ds, ax
    
    print "Enter First Number: "
    mov ah, 1
    int 21h
    sub al, 30h
    mov num1, al
    mov sum, al
    
    printn
    
    print "Enter Second Number: "
    mov ah, 1
    int 21h 
    sub al, 30h
    mov num2, al  
    add sum, al
               
    printn
               
    print "The sum of the two numbers is "
    mov ah, 2
    mov al, sum
    add al, 48
    mov dl, al
    int 21h        
    
     