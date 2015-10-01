/*
 * Blinky_light.c
 *
 * Created: 10/1/2015 9:38:56 AM
 * Author : weird
 */ 

#include <avr/io.h>


int main(void)
{
    /* Replace with your application code */
	PORTB = (1<<PORTB5);
	DDRB = (1<<DDB5);
	//__no_operation();
	//_no_operation();
    while (1) 
    {
    }
}


