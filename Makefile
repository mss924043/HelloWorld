# Makefile for building HelloWorld.exe using g++ compiler

CC = g++
CFLAGS = -Wall -Wextra -std=c++17

SRC = HelloWorld.cpp
OBJ = $(SRC:.cpp=.o)
TARGET = HelloWorld.exe

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) $^ -o $@

%.o: %.cpp
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(TARGET)
