; String Reverse
; Name: Mohamad Aidil Najmir Bin Mohamad Sobri
; Date: 10/30/2022

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
include irvine32.inc

.data
myStr BYTE "Mohamad Aidil Najmir Bin Mohamad Sobri", 0
revStr BYTE SIZEOF myStr DUP(0)

.code
main PROC
    
    mov ecx, SIZEOF myStr       ; loop counter (copy size of myStr to ecx)
    mov esi, 0                  ; initialize esi with 0
    mov edi, SIZEOF myStr - 2   ; initialize edi with the last index of revStr

L1: mov al, myStr[esi]          ; copy character from myStr at index esi to al
    mov revStr[edi], al         ; copy character from al to revStr at index edi
    inc esi                     ; increment the index of esi
    dec edi                     ; decrement the index of edi 
    loop L1                     ; loop L1 until ecx = 0

    mov edx, OFFSET myStr       ; copy string myStr (original name) to edx 
    call writeString            ; print the string (original name)

    call crlf                   ; new line

    mov edx, OFFSET revStr      ; copy string revStr (reversed name) to edx
    call writeString            ; print the string (reversed name)

    INVOKE ExitProcess,0
main ENDP
END main
