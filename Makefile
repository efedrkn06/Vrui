CXXFLAGS = -fno-tls
# Compiler ve bayraklar
CC = gcc
CFLAGS = -Wall -g

# Derlenecek kaynak dosyaları
SRC = main.c
OBJ = $(SRC:.c=.o)
EXEC = my_program

# Varsayılan hedef: Tüm dosyaları derle
all: $(EXEC)

$(EXEC): $(OBJ)
	$(CC) $(OBJ) -o $(EXEC)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Temizleme hedefi
clean:
	rm -f $(OBJ) $(EXEC)

# Kurulum hedefi (isteğe bağlı)
install: $(EXEC)
	cp $(EXEC) /usr/local/bin

