CC = gcc
CFLAGS = -Wall -Wextra -O3

SERVER_SRC = src/server.c
CLIENT_SRC = src/client.c

SERVER_OBJ = $(SERVER_SRC:.c=.o)
CLIENT_OBJ = $(CLIENT_SRC:.c=.o)

SERVER_BIN = bin/server
CLIENT_BIN = bin/client

BIN_DIR = bin

all:  $(SERVER_BIN) $(CLIENT_BIN)


$(SERVER_BIN): $(SERVER_OBJ)
	$(CC) $(CFLAGS) -o $@ $^
	$(RM) $(SERVER_OBJ)

$(CLIENT_BIN): $(CLIENT_OBJ)
	$(CC) $(CFLAGS) -o $@ $^
	$(RM) $(CLIENT_OBJ)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

run: all
	@echo "Starting server in background..."
	@$(BIN_DIR)/server &
	@sleep 1
	@gnome-terminal -- bash -c "$(BIN_DIR)/client; exec bash"
	@echo "Client started in new terminal."

clean:
	rm -f $(SERVER_OBJ) $(CLIENT_OBJ) $(SERVER_BIN) $(CLIENT_BIN)

.PHONY: all clean run
