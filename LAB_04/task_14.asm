

.MODEL SMALL
.STACK 100H
.DATA
                
       INPUT    DB  "ENTER A DIGIT 1-7 : $" 
       thrty1      DB '31$'  
       thrty2      DB '30$'
       tw8         DB '28$'
      
       
       NEWLINE  DB 0DH, 0AH, '$'
    
.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here


LEA DX, INPUT  ; PROMPT
MOV AH, 9
INT 21H

MOV AH, 1       ; INPUT
INT 21H
SUB AL, '0'       ; CONVERT

MOV BL , AL      ; COPY IN BL



CMP AL, 1
JE  thirtyone    


CMP AL, 2
JE  twenty_eight


CMP AL, 3
JE   thirtyone

CMP AL, 4
JE   thirty

CMP AL, 5
JE   thirtyone

CMP AL, 6
JE   thirty


CMP AL, 7
JE   thirtyone

CMP AL, 8
JE   thirtyone 

CMP AL, 9
JE   thirty 

CMP AL, 10
JE   thirtyone 


CMP AL, 11
JE  thirty

CMP AL, 12
JE  thirtyone 





 



  




thirty: 

LEA DX, NEWLINE
MOV AH, 9
INT 21H

LEA DX, thrty2
MOV AH, 9
INT 21H  
JMP EXIT 


thirtyone:

LEA DX, NEWLINE
MOV AH, 9
INT 21H

LEA DX, thrty1
MOV AH, 9
INT 21H  
JMP EXIT  

twenty_eight:

LEA DX, NEWLINE
MOV AH, 9
INT 21H

LEA DX, tw8
MOV AH, 9
INT 21H   
 











EXIT: 
;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN