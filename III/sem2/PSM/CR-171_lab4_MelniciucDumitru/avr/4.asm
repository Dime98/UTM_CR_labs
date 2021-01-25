.include "m32def.inc"


; redefinirea registrilor
 .def flags = r2 
 .def temp  = r16
 .def itmp 	= r17
 .def cnt  	= r18
 .def pos 	= r19

.cseg	; segmentul de cod 
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
	rjmp DisplayNext
	
	 
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
DisplayNext:    
		in flags, SREG
		ser itmp
		out PORTC, itmp		; indic off
		LPM itmp, Z+
		out PORTA, itmp		; new
		out PORTC, pos		; indic on 
		
		asr pos
		brcs	end_dispaly
		movw ZH:ZL, XH:XL
		ldi pos, ~(1<<PC5)
		dec cnt
		brne end_dispaly
		ldi cnt, 30

		adiw XH:XL, 1
		cpi XL, Low((Message+6) *2)
		ldi itmp, High((Message+6) *2)
		cpc XH, itmp 
		brne end_dispaly
		ldi XL, low(Message*2)	; Adressa de inceput a mesajului (in memoria Flash)
		ldi XH, High(Message*2)


  end_dispaly:
		out SREG, flags
	 	reti


; Programul principal
//--------------------------------------------------------------	 
RESET:	 
     ldi temp, Low(RAMEND) 	; initializam stiva
	 out SPL, temp
	 ldi temp, High(RAMEND) 
	 out SPH, temp
 
	 CLR temp				;resetam temp
	 out DDRA, temp			; Setam ca intrare PORTB
	 out DDRD, temp			; Setam ca intrare PORTD


	 SER temp
	 out DDRB, temp
	 out DDRC, temp		; Setam ca iesire PORTC

	ldi temp, 77
	out OCR0, temp
	ldi temp,(1<<WGM01)|(1<<CS02)|(0<<CS01)|(0<<CS00) ; CTC 1 la 64
	out TCCR0, temp 

	ldi temp,(1<<OCIE0); permitem intreruperea Input Capture
	out TIMSK, temp 
	
	ldi ZL, low(Message*2)	; Adressa de inceput a mesajului (in memoria Flash)
	ldi ZH, High(Message*2)
	ldi pos, ~(1<<PC5)
	ldi cnt, 30

	ldi XL, low(Message*2)	; Adressa de inceput a mesajului (in memoria Flash)
	ldi XH, High(Message*2)

	SEI


 MAIN: ; programul principal
 rjmp main


 Message:
 	.DB 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x76, 0x79, 0x38, 0x38, 0x3F, 0x86, 0x00, 0x00, 0x00, 0x00
   
// 













