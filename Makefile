CC = g++
CFLAGS = -Wall -g

LIB_NAME = libcalc.a
EXEC_NAME = calculator_app

all: $(EXEC_NAME)

$(EXEC_NAME): main.o $(LIB_NAME)
	$(CC) $(CFLAGS) -o $(EXEC_NAME) main.o -L. -lcalc

$(LIB_NAME): calculator.o
	ar rcs $(LIB_NAME) calculator.o

main.o: main.cpp calculator.h
	$(CC) $(CFLAGS) -c main.cpp

calculator.o: calculator.cpp calculator.h
	$(CC) $(CFLAGS) -c calculator.cpp

clean:
	rm -f *.o $(LIB_NAME) $(EXEC_NAME)
