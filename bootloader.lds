/*
	Link script for bootloader.
*/

OUTPUT_FORMAT("elf32-littlearm", "elf32-littlearm", "elf32-littlearm")
OUTPUT_ARCH(arm)
ENTRY(Vectors)
SECTIONS
{
	. = 0xFFFF0000;

	. = ALIGN(4);
	.text :
	{
		start.o (.text)
		*(.text)
	}
	
	/*
	. = ALIGN(4);
	.rodata:{*(.rodata)}
	
	
	. = ALIGN(4);
	.data:
	{
		*(.data)
	}
	
	
	
	. = ALIGN(4);
	bss_start = .;
	.bss:
	{
		*(.bss)
		*(COMMON)
	}
	bss_end = .;
	
	*/
}





