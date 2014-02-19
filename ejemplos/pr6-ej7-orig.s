.data 

coorX: .byte 24 		; coordenada X de un punto 
coorY: .byte 24 		; coordenada Y de un punto 
color: .byte 255, 0, 255, 0  	; color magenta 
CONTROL: .word32 0x10000 
DATA:  .word32 0x10008 
 

.text 
  lwu   r24, DATA(r0)		; r24 = direcci�n de DATA 
  lbu   r10, coorX(r0)  	; r10 = valor de coordenada X 
  sb    r10, 5(r24) 		; DATA+5 recibe el valor de coordenada X 
  lbu   r11, coorY(r0)  	; r11 = valor de coordenada Y 
  sb    r11, 4(r24) 		; DATA+4 recibe el valor de coordenada Y 
  lwu   r9, color(r0) 		; r9 = valor de color a pintar 
  sw    r9, 0(r24) 		; DATA recibe el valor del color a pintar 
   
  lwu   r25, CONTROL(r0)   	; r25 = direcci�n de CONTROL 
  daddi r2, r0, 5  		; r2 = 5, funci�n 5 = salida gr�fica 
  sd    r2, 0(r25) 		; CONTROL recibe 5 y produce el dibujo del punto 
 
  daddi r2, r0, 7  		; r2 = 7, funci�n 7 = limpiar pantalla gr�fica 
  sd    r2, 0(r25) 		; CONTROL recibe 7 y limpia la pantalla gr�fica 
  halt
