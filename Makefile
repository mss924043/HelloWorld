# Makefile for building HelloWorld.cpp

# Compiler
CXX := g++

# Compiler flags
CXXFLAGS := -std=c++11

# Source files
SRCS := HelloWorld.cpp

# Object files
OBJS := $(SRCS:.cpp=.o)

# Target executable
TARGET := HelloWorld.exe

# Default target
all: $(TARGET)

# Rule to compile source files
%.o: %.cpp
\t$(CXX) $(CXXFLAGS) -c $< -o $@

# Rule to link object files into the target executable
$(TARGET): $(OBJS)
\t$(CXX) $(OBJS) -o $(TARGET)

# Clean rule
clean:
\trm -f $(OBJS) $(TARGET)
