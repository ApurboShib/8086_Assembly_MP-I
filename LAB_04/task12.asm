.STACK 100H
.DATA

i_msg DB "i$"
k_msg DB "k$"
l_msg DB "l$"
m_msg DB "m$"

.CODE
MAIN PROC
MOV AX, @DATA
MOV DS, AX

MOV AH, 1        
INT 21H         
SUB AL, 30h      ; Convert ASCII to integer

mov bh,al 

MOV AH, 1        
INT 21H         
SUB AL, 30h 

mov bl,al

mov ax,0
mov al,bh 
mov cl,10
mul cl
add al,bl
           
           
CMP AL, 3        ; Compare input with 3
JG check_4_to_6

lea dx, i_msg
MOV AH, 9
INT 21H
JMP end

check_4_to_6:
CMP AL, 6        ; Compare input with 6
JG check_7_to_9

lea dx, k_msg
MOV AH, 9
INT 21H
JMP end

check_7_to_9:
CMP AL, 9        ; Compare input with 9
JG check_10

lea dx, l_msg
MOV AH, 9
INT 21H
JMP end

check_10:
CMP AL, 10       ; Compare input with 10
JE print_m
print_m:
lea dx, m_msg
MOV AH, 9
INT 21H

end:
MOV AX, 4C00H
INT 21H

MAIN ENDP
END MAIN