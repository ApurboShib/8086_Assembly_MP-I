; task 03.
; Perform the following arithmetic operation:
; (1 + 2) * (3 – 1) / 5 + 3 + 2 – (1 * 2)
.MODEL SMALL
.STACK 100H
.DATA

A db 1
B db 2
C db 3
D db 5

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here

;(1 + 2) * (3 - 1) / 5 + 3 + 2 - (1 * 2)
   
   MOV Al, A
   ADD Al, B
   
   MOV Cl, C
   
   SUB Cl, A
   
   MUL Cl 
   
   
   MOV Bl, D
   
   DIV Bl
   
   MOV Dl, Al
   
   ADD Al, C
   ADD Al, B
   
   ;ADD Al, Dl
   
   MOV Bl, Al
 
   MOV AL, A
   MOV Cl, B
   
   MUL Cl
   
   SUB Bl, Al
   
;MOV Al, Bl
   
;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN