                                                                                                                             .STACK 100H
.DATA

max_msg DB "Maximum number is: $"
min_msg DB "Minimum number is: $"
NEWLINE DB 0AH, 0DH, '$'

.CODE
MAIN PROC
; Initialize DS
MOV AX, @DATA
MOV DS, AX



MOV AH, 1        
INT 21H     
MOV BL, AL ;IN BL


MOV AH, 1        
INT 21H     
MOV CL, AL ; IN CL


MOV AH, 1        
INT 21H     
MOV CH, AL ; IN CH

LEA DX, NEWLINE
MOV AH, 9
INT 21H
       



CMP BL, CL
JNG NUM2

CMP BL, CH
JNG NUM3

;ELSE BL IS MAX
LEA DX ,max_msg
MOV AH, 9
int 21h 

MOV DL, BL
JMP DISPLAY





NUM2: 

CMP CL, CH
JNG NUM3



;ELSE CL IS MAX
LEA DX ,max_msg
MOV AH, 9
int 21h 

MOV DL, CL
JMP DISPLAY




NUM3:
LEA DX ,max_msg
MOV AH, 9
INT 21H

MOV DL, CH
JMP DISPLAY
 
 
DISPLAY:
MOV AH, 2
INT 21H


LEA DX, NEWLINE
MOV AH, 9
INT 21H




;MIN

CMP BL, CL
JNL NUM4

CMP CL, CH
JNL NUM5


LEA DX,min_msg
MOV AH, 9
INT 21H
MOV DL, BL
JMP DISPLAY1



NUM4:

CMP CH, CL

JNL NUM5

LEA DX,min_msg
MOV AH, 9
INT 21H

mov dl,cl
JMP DISPLAY1




NUM5:
LEA DX, min_msg
MOV AH, 9
INT 21H

MOV DL, CH
JMP DISPLAY1

DISPLAY1:
MOV AH, 2
INT 21H


 


EXT:
MOV AX, 4C00H
INT 21H

MAIN ENDP
END MAIN