.data 

CONTROL: .word32 0x10000 
DATA: 	 .word32 0x10008 

entero_sin_signo: .word 50213
entero_con_signo: .word -125
flotante: .double 3.1415926
 
.text 
 
lwu $s0, DATA(r0) 	; $s0 = direcci�n de DATA 
lwu $s1, CONTROL(r0) 	; $s1 = direcci�n de CONTROL 

daddi $t0, $0, 6 	; $t0 = 6 -> funci�n 6: limpiar pantalla alfanum�rica 
sd $t0, 0($s1) 		; CONTROL recibe 6 y limpia la pantalla 


ld $t0, entero_sin_signo($0)
sd $t0, 0($s0) 		; DATA recibe el entero
 
daddi $t0, $0, 1 	; $t0 = 1 -> funci�n 1: salida de un entero sin signo
sd $t0, 0($s1) 		; CONTROL recibe 1 y produce la salida del numero


ld $t0, entero_con_signo($0)
sd $t0, 0($s0) 		; DATA recibe el entero
 
daddi $t0, $0, 2 	; $t0 = 2 -> funci�n 2: salida de un entero con signo
sd $t0, 0($s1) 		; CONTROL recibe 3 y produce la salida del numero


ld $t0, flotante($0)
sd $t0, 0($s0) 		; DATA recibe el flotante
 
daddi $t0, $0, 3 	; $t0 = 3 -> funci�n 3: salida de un n�mero flotante
sd $t0, 0($s1) 		; CONTROL recibe 3 y produce la salida del numero


halt 

