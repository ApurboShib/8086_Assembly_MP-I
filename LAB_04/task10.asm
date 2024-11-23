.STACK 100H
.DATA

maxi DB "Maximum number is: $"
mini DB "Minimum number is: $"

.CODE
MAIN PROC
; Initialize DS
MOV AX, @DATA
MOV DS, AX

MOV AH, 1        
INT 21H     
MOV BL, AL 


MOV AH, 1        
INT 21H     
MOV CL, AL 


MOV AH, 1        
INT 21H     
MOV CH, AL 



mov ah,2
mov dl,0dh
int 21h
mov dl,0ah
int 21h


cmp bl,cl
jng num2

cmp bl,ch
jng num3

lea dx,maxi
mov ah,9
int 21h

mov dl,bl
jmp disply

num2:
cmp cl,ch
jng num3 

lea dx,maxi
mov ah,9
int 21h 

mov dl,cl
jmp disply

num3:
lea dx,maxi
mov ah,9
int 21h

mov dl,ch
jmp disply

disply:
mov ah,2
int 21h


mov ah,2
mov dl,0dh
int 21h
mov dl,0ah
int 21h

;for less section.

cmp bl,cl
jnl num4

cmp bl,ch
jnl num5

lea dx,mini
mov ah,9
int 21h

mov dl,bl
jmp disply1

num4:
cmp cl,ch
jnl num5 

lea dx,mini
mov ah,9
int 21h 

mov dl,cl
jmp disply1

num5:
lea dx,mini
mov ah,9
int 21h

mov dl,ch
jmp disply1

disply1:
mov ah,2
int 21h
end:
 ; Exit to DOS
MOV AX, 4C00H
INT 21H

MAIN ENDP
END MAIN