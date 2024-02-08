# Makefile for building HelloWorld.cpp on GitHub Actions

# Compiler
CXX := g++

# Compiler flags
CXXFLAGS := -std=c++11

# Source files
SRCS := HelloWorld.cpp

# Object files
OBJS := $(SRCS:.cpp=.o)

# Target executable
TARGET := HelloWorld

# Default target
all: $(TARGET)

# Rule to compile source files
%.o: %.cpp
    $(CXX) $(CXXFLAGS) -c $< -o $@

# Rule to link object files into the target executable
$(TARGET): $(OBJS)
    $(CXX) $(OBJS) -o $(TARGET)

# Clean rule
clean:
    rm -f $(OBJS) $(TARGET)
