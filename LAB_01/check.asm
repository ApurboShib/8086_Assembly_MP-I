.model small
.stack 100h
.data
    message db 'Hello, World!$'
.code
main:
    ; Initialize data segment
    mov ax, @data
    mov ds, ax

    ; Print the message
    mov ah, 09h        ; Function to display string
    lea dx, message    ; Load address of the message
    int 21h            ; DOS interrupt to print string

    ; Exit program
    mov ah, 4Ch        ; Function to terminate program
    int 21h            ; DOS interrupt to terminate

end main
