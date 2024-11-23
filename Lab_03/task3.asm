.MODEL SMALL
.STACK 100H
.DATA
    messege_1 db "Enter a character: $"
    messege_2 db "Enter an uppercase letter: $"
    ans_1 db "result: $"
    ans_2 db "Lowercase: $"

.CODE
MAIN PROC
    ; Initialize data segment
    MOV AX, @DATA
    MOV DS, AX
    
    ;part a.

    LEA DX, messege_1     
    MOV AH, 9            
    INT 21H              
                       
    MOV AH, 1            
    INT 21H              
    MOV BL, AL           

    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h 

    LEA DX, ans_1   
    MOV AH, 9           
    INT 21H             
    
    MOV DL,BL
    MOV AH, 2           
    INT 21H             

    
    ; part b

    LEA DX,messege_2      
    MOV AH, 9            
    INT 21H              

    MOV AH, 1            
    INT 21H
    MOV BL,AL           

   
    ADD BL, 32          
              
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h           
    
    LEA DX, ans_2  
    MOV AH, 9            
    INT 21H              
    
    MOV DL, BL
    MOV AH, 2           
    INT 21H             

    ; part c
    
    LEA DX,messege_2      
    MOV AH, 9            
    INT 21H             

    MOV AH, 1           
    INT 21H
    MOV bl,al             

    
    ADD bl, 32                  

  
    MOV AH, 2           
    MOV DL, 0DH         
    INT 21H              
    MOV DL, 0AH          
    INT 21H             
    
    LEA DX, ans_1   
    MOV AH, 9           
    INT 21H 
    
    MOV DL, BL 
    MOV AH, 2            
    INT 21H             

    
    MOV AX, 4C00H       
    INT 21H
MAIN ENDP
END MAIN