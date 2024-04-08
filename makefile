#compiler
CC=gcc-13

#flags, -c makes an object and -g gives debug info when errors occur
CFLAGS = -c -g

output: main.o library.o
	$(CC) main.o library.o -o $@

main.o: main.c
	$(CC) $(CFLAGS) main.c -o $@

library.o: library.c library.h
	$(CC) $(CFLAGS) library.c -o $@

clean:
	rm *.o output


