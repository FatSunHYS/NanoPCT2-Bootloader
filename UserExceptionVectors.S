/*
	The beginning of the Bootloader for NanoPC-T2
*/

/* Base address of the internal SRAM. */
#define BASEADDR_SRAM 0xFFFF0000

/*
 =======================================================
	User Exception Vector Handler
 =======================================================
 */

	.global Vectors
Vectors:
	b		Reset_Handler		//; 00 - Reset
	.word		0x00000000		//; 04 - Undefined instructions
	.word		0x00000000		//; 08 - SWI instructions
	.word		0x00000000		//; 0C - Instruction fetch aborts
	.word		0x00000000		//; 10 - Data access aborts
	.word		0x00000000		//; 14 - Reserved (was address exception)
	.word		0x00000000		//; 18 - IRQ interrupts
	.word		0x00000000		//; 1C - FIQ interrupts


/*
 =======================================================
	Code Text
 =======================================================
 */

Reset_Handler:
	b		.


