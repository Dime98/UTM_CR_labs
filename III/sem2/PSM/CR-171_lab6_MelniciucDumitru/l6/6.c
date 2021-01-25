.include "m32def.inc"

 .equ BitRate=51		; 9600 Bps for 8 MHz CLK


 .def flags = r2

 .def iregL  = r16
 .def iregH = r17
 .def icnt = r18
 .def tempH=R19
 .def tempL=R20
 .def aL=R21
 .def aH=R22
 .def dataH=R23
 .def dataL=R24
 .def channel = r25


.dseg 
 VideoBuff: .BYTE 6  
 ADCResults: .Byte 2 	//vectorul cu rezultate a conversiei

 .CSEG   ; inceputul segmentului de cod
 
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
.org	URXCaddr	; adresa vect de intrerupere ce se activeaza la receptia unu caracter
	rjmp RECIVE      ; de la USART

.org	UDREaddr	; adresa vect de intrer ce se va apela atita timp cit in emitator va mai fi spatiu
	rjmp Send

.org	UTXCaddr	; USART Transmit Complete Interrupt Vector Address
	reti

.org	ADCCaddr	; adr de intr la sfirsit conv de la adc
	rjmp End_Conversion

.org	ERDYaddr	; EEPROM Interrupt Vector Address
	reti
.org	ACIaddr 	; Analog Comparator Interrupt Vector Address
	reti
.org    TWIaddr   ; Irq. vector address for Two-Wire Interface
	reti
.org	SPMRaddr	; Store Program Memory Ready Interrupt Vector Address
	reti


End_Conversion:    ; subrutina de intrerup de la ADC

	in flags, SREG
	in iRegL, ADCL   ; citim rez conversiei
	in iRegH, ADCH
	STS ADCResults, iRegH  ; inscrim rez in mem in adresa var val in poz 2 si 3
	STS ADCResults+1, iRegL
      out SREG, flags   ; restabilim fanioanele

RETI

//--------------------------------------------------------------------------------
 RECIVE:   ; subrutina de intrerupere ce se va apela la receptia unui caracter
	in flags, SREG

	in iRegL, UDR   ; citim caract din buferul receptorului
	CPI iRegL, '?'   ; il comparam cu caract #
	BRNE END_RECIVE   ; daca e diferit atunci salt
	SBIC UCSRB, UDRIE  ; testam daca inca  nu se transmite pachetul precedent

	RJMP End_Recive
	ldi icnt, 6    ; initializam contorul
	ldi YL, low(VideoBuff)   ; initializam adresa vectorilor
	ldi YH, high(VideoBuff)
	SBI UCSRB, UDRIE    ;setam fanionul de validare a intreruperilor

  End_RECIVE:

  	out SREG, flags  ; retsabilim fanioanele
	RETI


//--------------------------------------------------------------------------------
  Send: ; subrutina de intrerupere a emitatorului
  	in flags, SREG ; salvam temporar fanioanele

	ld iRegL, Y+ ; citim din memorie urmatorul caracter de pe adresa plasata in Y cu incrementarea a acestei adrese
	out UDR, iRegL  ; inscrim acest caracter in buferul emitatorului
	dec icnt           ; decrementam contorul
	brne END_Send   ; salt daca nu a fost ultimul caracter
	CBI UCSRB, UDRIE    ;a,ltfel i nvalidam intreruperile UDRIE

	End_Send:
	 out SREG, flags
    RETI
 
 
     
//***************************************************************
	 Reset:
	 	ldi tempL, low(RAMEND)  ;initializam pointerul la stiva
		out SPL, tempL
		ldi tempL, High(RAMEND)
		out SPH, tempL

		CLR tempL
		 out DDRA, tempL   ; initializam toate porturile ca intrare
		 out DDRB, tempL
		 out DDRC, tempL
		 out DDRD, tempL

		 ldi tempL, (1<<REFS0)
		 out ADMUX, tempL
		 ldi tempL, (1<<ADEN)|(1<<ADIE)|(1<<ADSC)|(1<<ADATE)|(1<<ADPS2) ; activam convert analog digital in modul free running (face conversia in continuu)
		 out ADCSRA, tempL

	; configuram USART-ul
		 ldi tempL, High(BitRate)   ; incarcam prescalerul
		 out UBRRH, tempL
		 ldi tempL, Low(BitRate)
		 out UBRRL, tempL
		 clr tempL 
		 out UCSRA, tempL

		 ldi tempL, (1<<RXEN)|(1<<TXEN)|(1<<RXCIE)  ; activam receptorul si emitatorul
		 out UCSRB, tempL

		 ldi tempL, (1<<URSEL)|(0<<USBS)|(1<<UCSZ1)|(1<<UCSZ0) ; selectam 8 biti de date lung caract. si 2 stop biti
		 out UCSRC,tempL
		 
 
		 sei
		 
   MAIN: ; programul principal
	 	
	cli
	lds DataH,  ADCResults
	lds DataL,  ADCResults+1
	sei

//	ldi DataL, Low(500)
//	ldi DataH, High(500)

	rcall BinToDec 
	RJMP MAIN


//----------------------------------------------------
  BinToDec:
	CLR tempL
	SBRS dataH, 7
	rjmp positiv
	sub tempL, DataL		// Inversam numaru
	sbc tempL, DataH
	LDI tempL,0X40 		// Incarcam codula la simbolul (-)
  positiv:	
	STS Videobuff, tempL
	CLR tempL
	ldi aL, Low(10000)
	ldi aH, High(10000)
// zeci de miimi
  tenthousands:
  	CP dataL, aL
	CPC dataH, aH
	BRLO endtenthousands
	SUB dataL, aL
	SBC  dataH, aH
	INC tempL
	rjmp tenthousands
 endtenthousands:
	RCALL getcode
	STS VideoBuff+1, tempL

// miimi
	CLR tempL
	ldi aL, Low(1000)
	ldi aH, High(1000)	
 thousands:
	CP dataL, aL
	CPC dataH, aH
	BRLO endthousands
	SUB dataL, aL
	SBC dataH, aH
	INC tempL
	Rjmp thousands
 endthousands:
	RCALL getcode
	STS videobuff+2, tempL

// Sutimi
	clr tempL
	ldi aL, Low(100)
	ldi aH, High(100)	
 hundreds:
	CP dataL, aL
	CPC dataH, aH
	BRLO endhundreds
	SUB dataL, aL
	SBC dataH, aH
	INC tempL
	Rjmp hundreds
 endhundreds:
	RCALL getcode
//	ori tempL, 0x80
	STS VideoBuff+3, tempL

// zecimi
	CLR tempL
	ldi aL, Low(10)
	ldi aH, High(10)
 tenths:
	CP dataL, aL
	CPC dataH, aH
	BRLO endtenths
	SUB dataL, aL
	SBC dataH, aH
	INC tempL
	Rjmp tenths
 endtenths:
	RCALL getcode
	STS VideoBuff+4, tempL
// unitatile
	mov tempL, DataL		
	RCALL getcode
	STS VideoBuff+5, tempL
	RET

///////////////////////////////////////////
GetCode:
	CLR tempH
	Ldi ZL, LOW(CodeTable*2)
	Ldi ZH, High(CodeTable*2)
	ADD ZL, tempL
	ADC ZH, tempH
	LPM tempL, Z
	RET


 CodeTable: //codurile cifrelor de la 0 la 9 
.DB 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39
   

// ADC4 + 3*ADC5 + ADC6 9600 
