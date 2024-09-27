; Program to check if AX is negative and negate it if true

org 100h               ; Set origin to 100h for COM file execution



MOV AX, 0AH            ; Initialize AX with a value (in this case, 10 in decimal)

CMP AX, 0              ; Compare AX with 0 to check if it's negative
JNL NOTHING            ; Jump to NOTHING if AX is not less than 0 (AX >= 0)

NEG AX                 ; If AX is negative, negate the value (change the sign)

NOTHING:               ; Label for cases where AX >= 0 or after negation

RET                    ; Return to caller