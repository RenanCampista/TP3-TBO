CFLAGS = -Wall -Wextra -Werror

all:
	gcc $(CFLAGS) -o trab3 src/client/main.c src/libs/src/*.c
clean:
	rm -f trab3
debug:
	gcc $(CFLAGS) -DDEBUG_MODE -o trab3 src/client/main.c src/libs/src/*.c
run:
	./trab3 luiz-sample-large < luiz-sample-large/searches.txt > output.txt
val:
	valgrind --track-origins=yes --leak-check=full ./trab3 luiz-sample-large < luiz-sample-large/searches.txt > output-extra.txt