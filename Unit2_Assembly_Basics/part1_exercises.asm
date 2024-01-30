; 
; Base Author:  Megan Avery Spring 2024
; Exercise Author: [YOUR NAME HERE]
; 
; Purpose - to learn about the following:
; 	- comments
;	- dumping registers
;	- printing empty lines
;	- instructions: mov, add, sub, inc/dec

%include "asm_io.inc"

; initialized data
segment .data

; uninitialized data
segment .bss


segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha

	; dump_regs 1
        ; call print_nl
        ; dump_regs 2

        ; mov eax, 0
        ; mov ah, 18
        ; mov al, 0BAH
        ; dump_regs 1

        ; mov ax, 4
        ; dump_regs 2

        ; mov eax, 3 ;eax = 3
        ; mov ebx, 4 ;ebx = 4
        ; add eax, ebx ;eax += ebx, eax = 7
        ; dump_regs 1

        ; mov eax, 40
        ; dump_regs 1
        ; mov ebx, 2
        ; dump_regs 2
        ; add eax, ebx
        ; dump_regs 3

        ; mov eax, 34
        ; sub eax, 19
        ; dump_regs 1

        ; inc 23 ;ERROR

        ; mov eax, 16
        ; dump_regs 1
        ; mov ebx, 4
        ; dump_regs 2
        ; sub eax, ebx
        ; dump_regs 3
        ; mov ecx, eax
        ; dump_regs 4
        ; inc ecx
        ; dump_regs 5

        mov ebx, 4

        add ebx, ebx ; 2 * 4 = 8
        add ebx, ebx ; 2 * 8 = 16
        mov ecx, ebx ; ecx = 16

        add ebx, ebx ; 2 * 16 = 32
        add ebx, ecx ; 2 * 32 = 64
        dump_regs 1

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret


