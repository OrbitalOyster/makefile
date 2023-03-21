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

# TODO: Header dependencies

# All .o files
OBJS := $(C_FILES:.c=.o)

# Final result
all: $(OUTPUT)
$(OUTPUT): $(OBJS)

# Compile all .c files
%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

# Clear working directory
clean:
	-rm *.o
	-rm $(OUTPUT)

.PHONY: clean
