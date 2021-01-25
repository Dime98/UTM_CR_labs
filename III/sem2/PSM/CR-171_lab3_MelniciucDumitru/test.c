#include <avr/interrupt.h>
#include <avr/io.h>
#include <util/delay.h>

#define F_CPU 20000000

int main(void) {

	DDRB = (1 << PORTB0);
	PORTB = (1 << PROTB0);

	PORTD = (1 << PORT3);
	EIMSK = (1 << INT1);

	while(1) {
		if(cliFlag == 0) {
			sei();
		} else {
			cli();
			_delay_ms(2000);
			cliFlag = 0;
		}
	}



}

ISR(INT1_vect) {
	PORTB ^= (1 << PORTB0);
	cliFlag = 1;
}