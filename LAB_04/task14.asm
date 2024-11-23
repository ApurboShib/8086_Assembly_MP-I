.STACK 100H
.DATA
    days_in_jan DB "31 days$"
    days_in_feb DB "28 or 29 days$"
    days_in_mar DB "31 days$"
    days_in_apr DB "30 days$"
    days_in_may DB "31 days$"
    days_in_jun DB "30 days$"
    days_in_jul DB "31 days$"
    days_in_aug DB "31 days$"
    days_in_sep DB "30 days$"
    days_in_oct DB "31 days$"
    days_in_nov DB "30 days$"
    days_in_dec DB "31 days$"
    invalid_msg DB "Invalid month! Enter a number between 1 and 12.$"

.CODE
MAIN PROC
    ; Initialize the data segment
    MOV AX, @DATA
    MOV DS, AX

    ; Prompt the user to input the month number
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

mov cl,al

mov ah,2
mov dl,0dh
int 21h
mov dl,0ah
int 21h

mov ax,0
mov al,cl

       
    CMP AL, 1
    JE print_jan
    CMP AL, 2
    JE print_feb
    CMP AL, 3
    JE print_mar
    CMP AL, 4
    JE print_apr
    CMP AL, 5
    JE print_may
    CMP AL, 6
    JE print_jun
    CMP AL, 7
    JE print_jul
    CMP AL, 8
    JE print_aug
    CMP AL, 9
    JE print_sep
    CMP AL, 10
    JE print_oct
    CMP AL, 11
    JE print_nov
    CMP AL, 12
    JE print_dec

invalid:
    LEA DX, invalid_msg
    JMP print_msg

print_jan:
    LEA DX, days_in_jan
    JMP print_msg

print_feb:
    LEA DX, days_in_feb
    JMP print_msg

print_mar:
    LEA DX, days_in_mar
    JMP print_msg

print_apr:
    LEA DX, days_in_apr
    JMP print_msg

print_may:
    LEA DX, days_in_may
    JMP print_msg

print_jun:
    LEA DX, days_in_jun
    JMP print_msg

print_jul:
    LEA DX, days_in_jul
    JMP print_msg

print_aug:
    LEA DX, days_in_aug
    JMP print_msg

print_sep:
    LEA DX, days_in_sep
    JMP print_msg

print_oct:
    LEA DX, days_in_oct
    JMP print_msg

print_nov:
    LEA DX, days_in_nov
    JMP print_msg

print_dec:
    LEA DX, days_in_dec

print_msg:
    MOV AH, 9         ; DOS function to display a string
    INT 21H           ; Print the string at address DX

    ; Exit program
    MOV AX, 4C00H     ; DOS function to terminate program
    INT 21H

MAIN ENDP
END MAIN