; Suppose AL and BL contain extended ASCII characters. Display the one that
;comes first in the character sequence.

.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC

MOV AX,@DATA
MOV DS,AX
;enter your code here

mov al,'A'
mov bl,'$'

cmp al,bl
jle jump

mov dl,bl
mov ah,2
int 21H
jmp END

jump:

mov dl,al
mov ah,2
int 21H
END
;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN