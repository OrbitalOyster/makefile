# Generic Makefile
EXE := main
WARNINGS := -Wall -Wextra -Werror -Wshadow -Wpedantic
STANDART := -std=c11

# Implicit variables
CC := gcc
CFLAGS := $(WARNINGS) $(STANDART)
LDLIBS := 

# All .c files
C_FILES := $(wildcard *.c)

# All .o files
OBJS := $(patsubst %.c, %.o, $(C_FILES))

# Final result
all: $(EXE)

$(EXE): $(OBJS)

# Compile all .c files
%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	-rm *.o
	-rm main
