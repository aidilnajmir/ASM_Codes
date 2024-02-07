; Expression Calculation and using the Irvine Library
; My name: Mohamad Aidil Najmir Bin Mohamad Sobri
; Date: 10/05/2022

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
include irvine32.inc
.data
strName byte "My name is: Mohamad Aidil Najmir Bin Mohamad Sobri", 10, 13 

.code
main PROC

mov eax,8000h
mov ebx,2000h
mov ecx,1000h
mov edx,5000h

call DumpRegs; display values in registers before calculation

add eax, ebx; A <- (A+B)
add ecx, edx; C <- (C+D)

sub eax,ecx; A <- (A+B)-(C+D)

call DumpRegs; display values in registers after calculation

lea edx, strName
call writestring; call string to display name

INVOKE ExitProcess,0
main ENDP
END main