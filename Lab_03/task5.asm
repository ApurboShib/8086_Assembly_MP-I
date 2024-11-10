.MODEL SMALL
.STACK 100H
.DATA

  msg db "Enter three initials: $"    

.CODE
MAIN PROC

MOV AX, @DATA
MOV DS, AX


lea dx, msg             ; Display mesg 
mov ah, 9
int 21h                

;
mov ah, 1               ; input 1st char
int 21h                
mov bl, al             ; Store the first initial in BL


mov ah, 1              ; input 2nd char
int 21h                
mov cl, al             ; Store the second initial in CL


mov ah, 1              ; input 3rd char
int 21h                
mov bh, al             ; Store the third initial in BH


MOV AH, 2              ; print newline
MOV DL, 0DH            
INT 21H                
MOV DL, 0AH           
INT 21H


mov dl, bl             ; output 1st intial
mov ah, 2
int 21h                


MOV AH, 2              ; print newline
MOV DL, 0DH            
INT 21H                
MOV DL, 0AH           
INT 21H


mov dl, cl             ; output 2nd initial
mov ah, 2
int 21h                


MOV AH, 2              ; print newline
MOV DL, 0DH            
INT 21H                
MOV DL, 0AH           
INT 21H


mov dl, bh             ; print 3rd initial
mov ah, 2
int 21h                


MOV AX, 4C00H
INT 21H                ; Exit the program 

MAIN ENDP
END MAIN
