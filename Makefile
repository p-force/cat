# $> make ARG=input
# ARG=
CC= gcc
CFLAGS= -Wall -Wextra -Iinclude -Werror

FLDR= ./src/utils
OBJ= $(SRC:.c=.o)
OBJDIR= build
EXEC= cat

SRC=	./src/main.c $(FLDR)/print.c

all:
	@ $(CC) $(SRC) -o $(EXEC)
	@ # @ ./$(EXEC) $(ARG) || true

# Здесь использование `|| true` после команды гарантирует, что вне зависимости от результата выполнения ./cat, всегда будет возвращён успех (код возврата 0), что предотвращает вывод любых сообщений об ошибках от make.
# или можно вывести любое сообщение: || { echo "Warning: cat encountered an error."; }

clean:
	@ /bin/rm -rf $(EXEC)

.PHONY: all clean