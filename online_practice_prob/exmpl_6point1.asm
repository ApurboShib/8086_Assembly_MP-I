; Initialize AX and BX with values
MOV AX, 0FFFFH       ; AX = 65535 (maximum value for a 16-bit register)
MOV BX, 0FFFEH       ; BX = 65534 (one less than AX)

; Copy AX to CX for comparison
MOV CX, AX           ; CX = AX (65535)

; Compare BX with CX
CMP BX, CX           ; Compare BX (65534) with CX (65535)

; If BX is less than or equal to CX, jump to STOP_IT
JLE STOP_IT          ; Jump if BX <= CX (which is true, since 65534 < 65535)

; Otherwise, move BX to CX
MOV CX, BX           ; CX = BX (BX is smaller, so CX now holds 65534)

STOP_IT:             ; Stop point
                     ; At this point, CX contains either the smaller of AX or BX