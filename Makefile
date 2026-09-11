CC = gcc
CFLAGS = -Wall -Wextra
TARGET = checker
OBJECTS = main.o isEven.o isOdd.o

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) $(OBJECTS) -o $(TARGET)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf *.o $(TARGET)