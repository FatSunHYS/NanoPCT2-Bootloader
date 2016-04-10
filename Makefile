BUILD_TAR=./build
CODE_SRC=./code
ModulesPart=UserExceptionVectors led


ALL:$(ModulesPart)
	arm-linux-ld -T ./bootloader.lds -o bootloader.elf $(addprefix $(BUILD_TAR)/, $(addsuffix .o, $^))
	arm-linux-objcopy -I elf32-littlearm -O binary bootloader.elf bootloader.bin
	
UserExceptionVectors_Src=$(CODE_SRC)/UserExceptionVectors.S
UserExceptionVectors:$(UserExceptionVectors_Src)
	arm-linux-gcc -c -g -o $(BUILD_TAR)/$@.o $^ 

led_Src=$(CODE_SRC)/led.c
led:$(led_Src)
	arm-linux-gcc -c -g -o $(BUILD_TAR)/$@.o $^
	

.PHONY:clean
clean:
	rm -rf *.elf $(BUILD_TAR)/* *.bin
