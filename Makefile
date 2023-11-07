BIN = compiladorMicro.exe
OBJ = compiladorMicro.o
CC = gcc
CFLAGS = -std=c18
LFLAGS = -lm
RM = rm -f
$(BIN): $(OBJ)	
	$(CC) $(OBJ) -o $(BIN) $(CFLAGS) $(LFLAGS)

test: $(BIN)
	./$(BIN)  programaCorrecto.m

all: $(BIN)

compiladorMicro.o: compiladorMicro.c
	$(CC) -c compiladorMicro.c -o compiladorMicro.o $(CFLAGS)

clean:
	rm -rf *.o compiladorMicro.exe