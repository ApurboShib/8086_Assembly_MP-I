.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here  
; (a+b)>c && (a+c)>b && (b+c)>a then "Y" else "N" 
MOV AX, 3    
MOV BX, 4    
MOV CX, 5 
   
ADD AX, BX  
CMP AX, CX  ;ax<cx
JL INVALID

ADD BX, CX   
CMP BX, AX  ;bx<cx
JL INVALID

ADD CX, AX
CMP CX, BX  ;cx<bx
JL INVALID 

MOV DL, 'Y'   
MOV AH, 2   ;valid part ta print kore dilam
INT 21H
JMP END

INVALID:
MOV DL, 'N'
MOV AH, 2
INT 21H
   
END:

;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN