# Compiler
CC = g++

# Compiler flags
CFLAGS = -Wall -Wextra -std=c++11

# Source file
SRC = PartC.cpp

# Executable name
EXE_NAME = Part-C.exe

# Object files
OBJ = $(SRC:.cpp=.o)

# Binary directory
BIN_DIR = bin

# Output files
EXE = $(BIN_DIR)/$(EXE_NAME)
HEX = $(BIN_DIR)/$(EXE_NAME:.exe=.hex)

# Default target
all: $(EXE) $(HEX)

# Rule for compiling .cpp to .o
%.o: %.cpp
    $(CC) $(CFLAGS) -c $< -o $@

# Rule for linking object files to executable
$(EXE): $(OBJ)
    mkdir -p $(BIN_DIR)
    $(CC) $(CFLAGS) $(OBJ) -o $(EXE)

# Rule for creating .hex file (if applicable)
$(HEX): $(EXE)
    # Add commands here for creating .hex file from .exe
    # Example: objcopy -O ihex $(EXE) $(HEX)

# Clean rule
clean:
    rm -rf $(BIN_DIR) $(OBJ)

# Phony targets
.PHONY: all clean
