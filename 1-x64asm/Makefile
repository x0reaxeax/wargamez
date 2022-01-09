CC  = gcc
ASM = nasm
OBJ = ret.o
OUT = calc.bin

all: asmobj csrc

asmobj:
	$(ASM) -g -f elf64 -o $(OBJ) ret.asm

csrc:
	$(CC) -g -o $(OUT) retcalc.c $(OBJ)

clean:
	rm -f $(OBJ) $(OUT)
