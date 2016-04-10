#include "GPIO.h"

void delay( unsigned int time )
{
	while( --time );
}

void main( void )
{
	GPIOBALTFN0 &= ~( 3 << 24 );
	GPIOBALTFN0 |= ( 2 << 24 );
	GPIOBOUTENB |= ( 1 << 12 );
	GPIOBOUT |= ( 1 << 12 );
	
	while( 1 )
	{
		GPIOBOUT |= ( 1 << 12 );
		delay( 1000000 );
		GPIOBOUT &= ~( 1 << 12 );
		delay( 1000000 );
	}
}
