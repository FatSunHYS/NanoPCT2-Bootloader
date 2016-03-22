ALL:
	arm-linux-gcc -c -g -o UserExceptionVectors.o UserExceptionVectors.S
	arm-linux-ld -T ./bootloader.lds -o bootloader.elf UserExceptionVectors.o
	
.PHONY:clean
clean:
	rm -rf *.o *.elf 
