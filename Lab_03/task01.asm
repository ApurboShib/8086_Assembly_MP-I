; task 1.
; Take a character input and display it. Display the message "Please insert a character: " when taking an input.

.MODEL SMALL
.STACK 100H
.DATA

 a db "please enter a character: $"
 b db "the entered char is : $"
 
 

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here

lea dx, a ; outputs string a
mov ah, 9
int 21h

 
mov ah, 1 ; intput a
int 21h   

mov bl, al 

mov ah,2  ;  print new line
mov dl,0dh
int 21h
mov dl,0ah
int 21h

lea dx, b ; outputs string b
mov ah, 9
int 21h

mov dl, bl
mov ah, 2 ; user output
int 21h

;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN