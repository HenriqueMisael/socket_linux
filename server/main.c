#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/socket.h>
#include <netinet/in.h>

int server_handler;

struct sockaddr_in get_server_address(int port);

void create_socket_server(int port);

struct sockaddr_in get_server_address(int port) {
    struct sockaddr_in serv_addr;
    bzero((char *) &serv_addr, sizeof(serv_addr));
    serv_addr.sin_family = AF_INET;
    serv_addr.sin_addr.s_addr = INADDR_ANY;
    serv_addr.sin_port = htons(port);
    return serv_addr;
}

void accept_connections();

void error(const char *msg) {
    perror(msg);
    exit(1);
}

int main(int arg_count, char *args[]) {
    if (arg_count < 2) {
        fprintf(stderr, "ERROR, no port provided\n");
        exit(1);
    }

    create_socket_server(atoi(args[1]));

    accept_connections();

    close(server_handler);

    return 0;
}

void accept_connections() {

    struct sockaddr_in client_address;

    socklen_t clilen = sizeof(client_address);

    int client_handler = accept(server_handler, (struct sockaddr *) &client_address, &clilen);
    if (client_handler < 0) {
        error("ERROR on accept");
    }

    char buffer[256];

    bzero(buffer, 256);
    if (read(client_handler, buffer, 255) < 0) {
        error("ERROR reading from socket");
    }

    printf("Here is the message: %s\n", buffer);
    if (write(client_handler, "I got your message", 18) < 0) {
        error("ERROR writing to socket");
    }

    close(client_handler);
}

void create_socket_server(int port) {

    server_handler = socket(AF_INET, SOCK_STREAM, 0);

    if (server_handler < 0) {
        error("ERROR opening socket");
    }

    struct sockaddr_in address = get_server_address(port);

    if (bind(server_handler, (struct sockaddr *) &address, sizeof(address)) < 0) {
        error("ERROR on binding");
    }

    listen(server_handler, 5);
}