.MODEL SMALL         ; Define the memory model (small for code and data in one segment)
.STACK 100h          ; Define a small stack

.DATA
msg DB 'Hello, World!$'  ; Define the message with '$' as string terminator

.CODE
MAIN PROC
    MOV AX, @DATA     ; Load the data segment address
    MOV DS, AX        ; Set DS to the data segment

    MOV DX, OFFSET msg ; Load address of the message into DX
    MOV AH, 09h        ; Function to display a string
    INT 21h            ; Call DOS interrupt

    MOV AH, 4Ch        ; Function to exit program
    INT 21h            ; Call DOS interrupt
MAIN ENDP
END MAIN