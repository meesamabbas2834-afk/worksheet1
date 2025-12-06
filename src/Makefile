CC = gcc
ASM = nasm
CFLAGS = -m32
ASMFLAGS = -f elf32

# All tasks so far
all: task1 task1_2 task2 task2_array task2_range

# Rule 1: Task 1 Add two numbers
task1: task1.o driver.c
	$(CC) $(CFLAGS) -o task1 driver.c task1.o

task1.o: task1.asm
	$(ASM) $(ASMFLAGS) task1.asm

# Rule 2: Task 1.2 Variables
task1_2: task1_2.o driver.c
	$(CC) $(CFLAGS) -o task1_2 driver.c task1_2.o

task1_2.o: task1_2.asm
	$(ASM) $(ASMFLAGS) task1_2.asm

# Rule 3: Task 2 Loops
task2: task2.o driver2.c
	$(CC) $(CFLAGS) -o task2 driver2.c task2.o

task2.o: task2.asm
	$(ASM) $(ASMFLAGS) task2.asm

# Rule 4: Array sum program
task2_array: task2_array.o driver3.c
	$(CC) $(CFLAGS) -o task2_array driver3.c task2_array.o

task2_array.o: task2_array.asm
	$(ASM) $(ASMFLAGS) task2_array.asm

# Rule 5: Range sum program
task2_range: task2_range.o driver4.c
	$(CC) $(CFLAGS) -o task2_range driver4.c task2_range.o

task2_range.o: task2_range.asm
	$(ASM) $(ASMFLAGS) task2_range.asm

clean:
	rm -f *.o task1 task1_2 task2 task2_array task2_range
