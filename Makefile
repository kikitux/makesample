default: all

all: zero one

one: one.c
	gcc -o one one.c

zero: zero.c
	gcc -o zero zero.c

.PHONY: test clean

test: one zero
	./zero
	./one || echo all good

clean:
	-@rm zero
	-@rm one
