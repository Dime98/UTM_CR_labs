.include "m32def.inc"

 .def tmpL  = r16
 .def tmpH  = r17
 .def RezL = r18
 .def RezH = r19

 .def flags = r2


 .cseg
.org	0x0000
	rjmp	RESET	; Salt neconditionat

.org	INT0addr	; External Interrupt0 Vector Address
	reti
.org	INT1addr	; External Interrupt1 Vector Address
	
	reti

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
	rjmp End_Conversion

.org	ERDYaddr	; EEPROM Interrupt Vector Address
	reti
.org	ACIaddr 	; Analog Comparator Interrupt Vector Address
	reti
.org    TWIaddr   ; Irq. vector address for Two-Wire Interface
	reti
.org	SPMRaddr	; Store Program Memory Ready Interrupt Vector Address
	reti


End_Conversion:    ;Subrutina ce se va apela la sfirs conv. de la ADC
 		; comenzi pentru subruta data
	in flags, SREG   ; salvam temp. reg. de fanioane
	push tmpL
	push tmpH
	sbic ADMUX, MUX1
	rjmp Channell3

	in RezL, ADCL		; preluam rezultatele conversiei
	in RezH, ADCH	
	sbi ADMUX, MUX1
	rjmp EndISR
 
 Channell3:	
 	in tmpL, ADCL
	in tmpH, ADCH
	sub RezL, tmpL
	sbc RezH, tmpH
	out PORTC, RezL

	andi RezH, ~((1<<PA4)|(1<<PA5))
	swap RezH
	
	out PORTA, RezH

	cbi ADMUX, MUX1

 EndISR:
	sbi ADCSRA,ADSC 
	pop tmpH
	pop tmpL
    out SREG, flags   ; restabilim fanioanele
	RETI


RESET:	 
   	ldi tmpL, Low(RAMEND) 
	out SPL, tmpL
	ldi tmpH, High(RAMEND) 
	out SPH, tmpH
 
	CLR tmpL
	out DDRA, tmpL   ; setam intrarile
	out DDRB, tmpL	 

 	ldi tmpL, ~((1<<PA1)|(1<<pa3))  ; setam porturile A ca iinput cu PullUP pentru tetrada superioara
	out PORTA, tmpL
	
	ser tmpL
	out PORTA, tmpL
	out PORTB, tmpL

	out DDRC, tmpL		;portu B si C setam ca iesire
	ldi tmpL, (1<<PA4)|(1<<PA5)
	out DDRD, tmpL


	ldi tmpL, (1<<REFS0)|(1<<MUX0)  ; setam referinta la ADC, AVCC si canalul 1
	out ADMUX, tmpL
	ldi tmpL, (1<<ADEN)|(1<<ADIE)|(1<<ADSC)|(1<<ADPS2)|(1<<ADPS1)  ;activam convertorul si lansam conversia
	out ADCSRA, tmpL
	SEI ; validam intreruperile

	ldi tmpL, 3      ; salvam 3 in tmpl
	mul tmpH, tmpL   ; inmultim tmph cu tmpl
	mov RezL, R0    ;salvam rezultatul inferior cu mov
	mov RezH, R1    ;salvam rezultatul superior cu mov

	clr tmpH      ;resetam reg tmph
	sbrc tmpL, 7  ;verificam daca bitul 7 este 1 
	ser tmpH      ;daca e negativ extindem high cu unitati

	add RezH, tmpH
	add RezL, tmpL

	sub tmpL, RezL  ;inferior fara carry superior 
	sbc tmpH, RezH ; superior cu carry

	MAIN: 

	RJMP MAIN

	 // {PA:PB} = ADC4 + 3*ADC5 + ADC6 cu frecventa 5kHz 
