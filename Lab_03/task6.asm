.MODEL SMALL
.STACK 100H
.DATA

  msg db "Enter three initials: $"   

.CODE
MAIN PROC

MOV AX, @DATA
MOV DS, AX


lea dx, msg         ; print msg
mov ah, 9
int 21h               


mov ah, 1             ; input 1st initial
int 21h               
mov bl, al            


mov ah, 1              ; input 2nd initial
int 21h             
mov cl, al            


mov ah, 1               ; input 3rd initial
int 21h               
mov bh, al          

MOV AH, 2             ; ptint newline
MOV DL, 0DH        
INT 21H
MOV DL, 0AH        
INT 21H


mov dl, bl          ; output the 1st intial
mov ah, 2
int 21h               


MOV AH, 2           ; print newline
MOV DL, 0DH          
INT 21H
MOV DL, 0AH         
INT 21H

mov dl, cl          ; print 2nd initial
mov ah, 2
int 21h              


MOV AH, 2           ; print newline
MOV DL, 0DH           
MOV DL, 0AH           
INT 21H

mov dl, bh          ; print 3rd initial
mov ah, 2
int 21h              


MOV AX, 4C00H
INT 21H               ; Exit the program 

MAIN ENDP
END MAIN
