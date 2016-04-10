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
	b		pc, ResetV		//; 00 - Reset
	ldr		pc, UndefV		//; 04 - Undefined instructions
	ldr		pc,	SWIV		//; 08 - SWI instructions
	ldr		pc,	PAbortV		//; 0C - Instruction fetch aborts
	ldr		pc,	DAbortV		//; 10 - Data access aborts
	ldr		pc,	UnusedV		//; 14 - Reserved (was address exception)
	ldr		pc,	IRQV		//; 18 - IRQ interrupts
	ldr		pc,	FIQV		//; 1C - FIQ interrupts

ResetV:
	.word	Reset_Handler

UndefV:
	.word	( BASEADDR_SRAM + 0x04 )

SWIV:
	.word 	( BASEADDR_SRAM + 0x08 )

PAbortV:
	.word	( BASEADDR_SRAM + 0x0C )

DAbortV:
	.word	( BASEADDR_SRAM + 0x10 )

UnusedV:
	.word	( BASEADDR_SRAM + 0x14 )

IRQV:
	.word	( BASEADDR_SRAM + 0x18 )

FIQV:
	.word	( BASEADDR_SRAM + 0x1C )


/*
 =======================================================
	Code Text
 =======================================================
 */

Reset_Handler:
	b		.


