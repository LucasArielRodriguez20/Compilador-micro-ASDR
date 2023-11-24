ifdef OS
	RM = del /Q
	ECHO = @echo
else
	RM = rm -f
	ECHO = echo
endif

BIN = compiladorMicro.exe
OBJ = compiladorMicro.o
CC = gcc
CFLAGS = -std=c18
LFLAGS = -lm

$(BIN): $(OBJ)	
	$(CC) $(OBJ) -o $(BIN) $(CFLAGS) $(LFLAGS)

test: $(BIN)
	$(ECHO) Programa micro correcto:
	./$(BIN)  programaCorrecto.m
	$(ECHO) -------------------------------------------------------------------------------
	$(ECHO) Programa micro con error lexico:
	./$(BIN)  ErrorLexico.m
	$(ECHO) -------------------------------------------------------------------------------
	$(ECHO) Programa micro con error sintactico y semantico:
	./$(BIN)  ErrorSinYSem.m
	$(ECHO) -------------------------------------------------------------------------------

all: $(BIN)

compiladorMicro.o: compiladorMicro.c
	$(CC) -c compiladorMicro.c -o compiladorMicro.o $(CFLAGS)

clean:
	$(RM) *.o compiladorMicro.exe