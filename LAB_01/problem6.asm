.MODEL SMALL
.STACK 100H
.DATA

A DW 2
B DW 3
C DW 2

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here 



; 1. A = B - A 

MOV AX, B
SUB AX, A

MOV A, AX

 ; 2. A = -(A + 1)
 
 MOV AX, A
 INC AX
 NEG AX
 MOV A, AX
 
 ; 3. C = A + (B + 1) 
 
 MOV AX, B
 INC AX
 ADD AX, A
 MOV C, AX
 
  ; 4. A = B - (A - 1) 
  
  MOV AX, A
  DEC AX
  MOV BX, B
  SUB BX, AX
  MOV A, BX
 
 
;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN