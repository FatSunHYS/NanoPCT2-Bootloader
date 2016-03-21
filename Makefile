ALL:
	arm-linux-gcc -c -g -o start.o start.S
	arm-linux-ld -T ./bootloader.lds -o bootloader.elf start.o
	
.PHONY:clean
clean:
	rm -rf *.o *.elf 
