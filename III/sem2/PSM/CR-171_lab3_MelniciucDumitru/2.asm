 .include "m16def.inc"
.def temp = r16
.def cntL  = r26
.def cntH  = r27
.def flags = r2

.cseg
.org 0 
jmp Reset
.org $002 ;int0
jmp EXT_INT0

Reset:
ldi temp, high(RAMEND) ;inti stack
out sph, temp
ldi temp, low(RAMEND)
out spl, temp

;ldi temp, 0xff
;out DDRB, temp

;int
ldi temp, 0b01000000
out GICR, temp
ldi temp, 0b01000001
out MCUCR, temp
CLR temp				;resetam temp
out DDRA, temp		; Setam ca intrare PORTA 	

sei
Prog:
rjmp Prog

EXT_INT0:
cli
sbi PORTB, 0
rjmp Jet

cbi PORTB, 0

Vix:
sei
reti

Jet:
sbi PORTB, 0
rjmp Vix
