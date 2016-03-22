BUILD_TAR=./build
CODE_SRC=./code
ModulesPart=UserExceptionVectors


ALL:$(ModulesPart)
	arm-linux-ld -T ./bootloader.lds -o bootloader.elf $(BUILD_TAR)/$(addsuffix .o, $^)
	
	
UserExceptionVectors_Src=$(CODE_SRC)/UserExceptionVectors.S
UserExceptionVectors:$(UserExceptionVectors_Src)
	arm-linux-gcc -c -g -o $(BUILD_TAR)/UserExceptionVectors.o $^ 
	

.PHONY:clean
clean:
	rm -rf *.elf $(BUILD_TAR)/*
