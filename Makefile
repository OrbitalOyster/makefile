# Generic Makefile

OUTPUT := main
WARNINGS := -Wall -Wextra -Wshadow -Wconversion -Werror
STANDART := -std=c11
OPTIMIZATION := -O2
DEBUG :=

# Implicit variables
CC := gcc
CFLAGS := $(WARNINGS) $(STANDART) $(OPTIMIZATION) $(DEBUG)
LDLIBS :=

# All .c files
C_FILES := $(wildcard *.c)

# All .o files
OBJS := $(patsubst %.c, %.o, $(C_FILES))

# Final result
all: $(OUTPUT)
$(OUTPUT): $(OBJS)

# Compile all .c files
%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

# Clear working directory
clean:
	-rm *.o
	-rm main

.PHONY: clean
