all: bbsort32 bbsort64 array32O.s array64O.s array32O2.s array64O2.s array32O3.s array64O3.s

bbsort64: array64.o main64.o
	gcc -Wall -o bbsort64 array64.o main64.o

bbsort32: array32.o main.o
	gcc -m32 -Wall -o bbsort32 array32.o main.o

main.o: main.c
	gcc -m32 -Wall -o main.o -c main.c

main64.o: main.c
	gcc -Wall -o main64.o -c main.c

array32.o: array32.s
	gcc -m32 -Wall -o array32.o -c array32.s

array32.s: array.c
	gcc -m32 -Wall -o array32.s -S array.c

array64.o: array64.s
	gcc -Wall -o array64.o -c array64.s

array64.s: array.c
	gcc -Wall -o array64.s -S array.c

array64O.s: array.c
	gcc -Wall -O -o array64O.s -S array.c

array32O.s: array.c
	gcc -m32 -O -Wall -o array32O.s -S array.c

array64O2.s: array.c
	gcc -Wall -O2 -o array64O2.s -S array.c

array32O2.s: array.c
	gcc -m32 -O2 -Wall -o array32O2.s -S array.c

array64O3.s: array.c
	gcc -Wall -O3 -o array64O3.s -S array.c

array32O3.s: array.c
	gcc -m32 -O3 -Wall -o array32O3.s -S array.c

clean:
	rm -f *.o *.s bbsort32 bbsort64
