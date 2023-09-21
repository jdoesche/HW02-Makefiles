CC = g++
CFLAGS = -g -Wall -Wextra

default: employee

employee:		Employee.o main.o
	$(CC) $(CFLAGS) -o employee Employee.o main.o

Employee.o:	Employee.cpp Employee.h
	$(CC) $(CFLAGS) -c Employee.cpp

main.o:	main.cpp Employee.h
	$(CC) $(CFLAGS) -c main.cpp

clean:
	$(RM) employee *.o *~