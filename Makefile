ALL:
	arm-linux-gcc -c -g -o UserExceptionVectors.o UserExceptionVectors.S
	arm-linux-ld -T ./bootloader.lds -o bootloader.elf UserExceptionVectors.o
	arm-linux-objcopy -I elf32-littlearm -O binary bootloader.elf bootloader.bin
	
.PHONY:clean
clean:
	rm -rf *.o *.elf 
