.MODEL SMALL
.STACK 100H
.DATA

    m db "ENTER A HEX DIGIT: $"
    n db "IN DECIMAL IT IS $"
    o db "DO YOU WANT TO DO IT AGAIN? $"
    p db "ILLEGAL CHARACTER-ENTER 0..9 OR A..F: $"
    
    newline db 0dh, 0ah, '$'

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here 



    begin:
    mov ah, 9          ; enter hex prompt
    lea dx, m 
    int 21h
    
    ;mov ah, 1
    ;int 21h
    
    ;mov bl, al  
    
    
    
    begin2:            ; input hex
    mov ah, 1
    int 21h
    mov bl, al  
    
    
    lea ax, newline    ; new line
    mov ah, 9
    int 21h
    
    
 
   
    
  
    cmp bl, 30h
    je print
    
    cmp bl, 31h
    je print
    
    cmp bl, 32h
    je print
    
    cmp bl, 33h
    je print
    
    cmp bl, 34h
    je print
    
    cmp bl, 35h
    je print
    
    cmp bl, 36h
    je print
    
    cmp bl, 37h
    je print
    
    cmp bl, 38h
    je print
    
    cmp bl, 39h
    je print
    
    cmp bl, 41h
    je print10
    
    cmp bl, 42h
    je print11
    
    cmp bl, 43h
    je print12
    
    cmp bl, 44h
    je print13
    
    cmp bl, 45h
    je print14
    
    cmp bl, 46h
    je print15
    
    jmp printe
    
    
    printe:            ; illegal
    mov ah, 9
    lea dx, p
    int 21h
    jmp begin2
    
    print:
    mov ah, 9
    lea dx, n          ; in decimal
    int 21h
    mov dl, bl
  
    mov ah, 2
    int 21h
    jmp next
    
    print10:        
    mov ah, 9
    lea dx, n
    int 21h
    mov dl, 31h
    mov ah, 2
    int 21h
    mov dl, 30h
    mov ah, 2
    int 21h
    
    jmp next
            
    print11:        
    mov ah, 9
    lea dx, n
    int 21h
    mov dl, 31h
    mov ah, 2
    int 21h
    mov dl, 31h
    mov ah, 2
    int 21h
    
    jmp next
    
    print12:        
    mov ah, 9
    lea dx, n
    int 21h
    mov dl, 31h
    mov ah, 2
    int 21h
    mov dl, 32h
    mov ah, 2
    int 21h
    
    jmp next
    
    print13:        
    mov ah, 9
    lea dx, n
    int 21h
    mov dl, 31h
    mov ah, 2
    int 21h
    mov dl, 33h
    mov ah, 2
    int 21h
    
    jmp next
    
    print14:        
    mov ah, 9
    lea dx, n
    int 21h
    mov dl, 31h
    mov ah, 2
    int 21h
    mov dl, 34h
    mov ah, 2
    int 21h
    
    jmp next
    
    print15:        
    mov ah, 9
    lea dx, n
    int 21h
    mov dl, 31h
    mov ah, 2
    int 21h
    mov dl, 35h
    mov ah, 2
    int 21h
    
    jmp next
    
    
    next:
    
    lea dx, newline    ; new line
    mov ah, 9
    int 21h
 
    
    mov ah, 9
    lea dx, o         ; again
    int 21h
    mov ah, 1
    int 21h
    
    mov cl, al
    
    
    lea dx, newline    ; new line
    mov ah, 9
    int 21h
 
    
   
    
    cmp cl, 'y'
    je begin
    cmp cl, 'Y'
    je begin
    jmp exit
    
    exit:





;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN