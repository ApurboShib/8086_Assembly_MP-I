.STACK 100H
.DATA
sat DB "Saturday$"
sun   DB "Sunday$"
mon   DB "Monday$"
tue  DB "Tuesday$"
wed DB "Wednesday$"
thurDB "Thursday$"
fri  DB "Friday$"
invalid  DB "Invalid input$"

.CODE
MAIN PROC

MOV AX, @DATA
MOV DS, AX

MOV AH, 1         
INT 21H           
SUB AL, 30h   ; ascii theke number eh convert korchi


mov BL,AL
CMP BL, 1
JL invalid        ; If input < 1, jump to invalid
CMP BL, 7
JG invalid        ; If input > 7, jump to invalid
          
          
mov ah,2
mov dl,0dh
int 21h
mov dl,0ah
int 21h

CMP BL, 1
JE print_saturday
CMP BL, 2
JE print_sunday
CMP BL, 3
JE print_monday
CMP BL, 4
JE print_tuesday
CMP BL, 5
JE print_wednesday
CMP BL, 6
JE print_thursday
CMP BL, 7
JE print_friday

invalid:
    LEA DX, invalid
    JMP print_msg

print_saturday:
    LEA DX, sat
    JMP print_msg

print_sunday:
    LEA DX, sun
    JMP print_msg

print_monday:
    LEA DX, mon
    JMP print_msg

print_tuesday:
    LEA DX, tue
    JMP print_msg

print_wednesday:
    LEA DX, wed
    JMP print_msg

print_thursday:
    LEA DX, thursday_msg
    JMP print_msg

print_friday:
    LEA DX, friday_msg

print_msg:
    MOV AH, 9         ; Function to display string
    INT 21H          

    MOV AX, 4C00H
    INT 21H

MAIN ENDP
END MAIN