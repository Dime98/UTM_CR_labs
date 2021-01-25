.include "m32def.inc"

; definirea unei constante
 .equ const		=	3000/19*56
 .equ const1	=	256



; redefinirea registrilor
 .def tmpH  = r16
 .def tmpL  = r17
 .def aL 	= r18
 .def aH 	= r19
 .def bH    = r20
 .def bL    = r21
 .def flags = r2

 

.dseg	; segmentul de date
.org 0x60		; sa plaseze variabila pe adresa 0x66
myvar:	.byte 2
var2:	.byte 2

.cseg	; segmentul de cod 
.org	0x0000
	rjmp	RESET	; Salt neconditionat

.org	INT0addr	; External Interrupt0 Vector Address
	reti
.org	INT1addr	; External Interrupt1 Vector Address
	rjmp INT1_ISR

.org	INT2addr	; External Interrupt2 Vector Address
	reti
.org	OC2addr	    ; Output Compare2 Interrupt Vector Address
	reti 
.org	OVF2addr	; Overflow2 Interrupt Vector Address
	reti
.org	ICP1addr	; Input Capture1 Interrupt Vector Address
	reti
.org	OC1Aaddr	; Output Compare1A Interrupt Vector Address
	reti
.org	OC1Baddr	; Output Compare1B Interrupt Vector Address
	reti
.org	OVF1addr	; Overflow1 Interrupt Vector Address
	reti
.org	OC0addr	    ; Output Compare0 Interrupt Vector Address
	reti
.org	OVF0addr	; Overflow0 Interrupt Vector Address
	reti
.org	SPIaddr	     ; SPI Interrupt Vector Address
	reti
.org	URXCaddr	; USART Receive Complete Interrupt Vector Address
	reti
.org	UDREaddr	; USART Data Register Empty Interrupt Vector Address
	reti
.org	UTXCaddr	; USART Transmit Complete Interrupt Vector Address
	reti
.org	ADCCaddr	; ADC Interrupt Vector Address
	reti
.org	ERDYaddr	; EEPROM Interrupt Vector Address
	reti
.org	ACIaddr 	; Analog Comparator Interrupt Vector Address
	reti
.org    TWIaddr   ; Irq. vector address for Two-Wire Interface
	reti
.org	SPMRaddr	; Store Program Memory Ready Interrupt Vector Address
	reti

//---------------------------------------------------------------
INT1_ISR:    ;Subrutina de prelucrare a intreruperii
	in flags, SREG		; memorizam temporar flagurile
 		; comenzi pentru subruta data


	 out SREG, flags	; restabilim fanioanele
	 reti

; Programul principal
//--------------------------------------------------------------	 
RESET:	 
     ldi tmpL, Low(RAMEND) 	; initializam stiva
	 out SPL, tmpL
	 ldi tmpH, High(RAMEND) 
	 out SPH, tmpH
 

	 ldi tmpL, 0xff			 	
	 out DDRC, tmpL	
	 out DDRB, tmpL	
	 		


	

 MAIN: ; programul principal
   
   in tmpH, PINB ;salvam valoarea de la pinii de pe port b
   ldi tmpL, 3      ; salvam 3 in tmpl
   mul tmpH, tmpL   ; inmultim tmph cu tmpl
   mov aL, R0    ;salvam rezultatul inferior cu mov
   mov aH, R1    ;salvam rezultatul superior cu mov

   ldi tmpL, -20 ;salvam valoarea 150 in tmpl

   clr tmpH      ;resetam reg tmph
   sbrc tmpL, 7  ;verificam daca bitul 7 este 1 
   ser tmpH      ;daca e negativ extindem high cu unitati

   sub tmpL, aL  ;inferior fara carry superior 
   sbc tmpH, aH ; superior cu carry

   asr tmpH
   ror tmpL
   asr tmpH
   ror tmpL
   
   out PORTB, tmpH
   out PORTC, tmpL



	RJMP MAIN
