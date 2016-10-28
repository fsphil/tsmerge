
CC=gcc
CFLAGS=-g -O2 -Wall
LDFLAGS=

all: tspush

#tsmerge: main.o ts.o merger.o
#	$(CC) $(LDFLAGS) -o tsmerge main.o ts.o merger.o $(LDFLAGS)

tspush: push.o ts.o
	$(CC) $(LDFLAGS) -o tspush push.o ts.o $(LDFLAGS)

.c.o:
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f *.o

