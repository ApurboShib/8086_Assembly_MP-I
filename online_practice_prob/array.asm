.DATA
W DW 10, 20, 30, 40

.CODE
MOV AX, [W + 6]  ; Load the value at W+6 (which is the third element, 30) into AX
MOV [W], AX      ; Move the value from AX (30) to W (the first element)