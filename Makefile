
all: test.a main.o
	gcc main.o test.a -pthread -o main

main.o: main.c
	gcc -c main.c -o main.o

test.a: test.go
	go build -buildmode=c-archive test.go

clear:
	rm test.h
	rm test.a
	rm main.o
	rm main
