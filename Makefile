.PHONY: clean
CC=clang
CFLAGS=-g --std=c99 -fpic

all: strings backwards

strings: strings.o
	$(CC) -Wall -o $@ $^

strings.o: strings.c 
	$(CC) -c -Wall -o $@ $< $(CFLAGS)

libstrings.so: strings.o
	$(CC) -shared -Wall -o $@ $^

backwards: backwards.o
	$(CC) -o $@ $^

backwards.o: backwards.c 
	$(CC) -c -o $@ $< $(CFLAGS)

clean:
	rm -f strings.o strings libstrings.so backwards.o backwards
