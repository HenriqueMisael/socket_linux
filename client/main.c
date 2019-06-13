#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h>
#include <stdbool.h>

int socket_handler;

char name[256];

void open_socket();

void connect_server(char *const *args);

void get_response();

void send_message(const char *buffer);

char *get_command();

void error(const char *msg) {
    perror(msg);
    exit(0);
}

int main(int arg_count, char *args[]) {
    if (arg_count < 3) {
        fprintf(stderr, "usage \"%s hostname port name\" where name is optional\n", args[0]);
        exit(0);
    }

    if (arg_count == 4) {
        strcpy(name, args[3]);
    } else {
        sprintf(name, "anonymous");
    }

    connect_server(args);
    send_message(name);
    do {
        char *message = get_command();

        if (strlen(message) == 1) {
            break;
        }

        send_message(message);
        get_response();
    } while (true);

    close(socket_handler);

    return 0;
}

char *get_command() {
    printf("Please enter the message: ");

    char *buffer = malloc(256);
    bzero(buffer, 256);
    fgets(buffer, 255, stdin);

    return buffer;
}

void send_message(const char *buffer) {
    if (write(socket_handler, buffer, strlen(buffer)) < 0) {
        error("ERROR writing to socket");
    }
}

void get_response() {
    char buffer[256];
    bzero(buffer, 256);
    if (read(socket_handler, buffer, 255) < 0) {
        error("ERROR reading from socket");
    }
    printf("%s\n", buffer);
}

void connect_server(char *const *args) {
    open_socket();
    struct hostent *server;
    server = gethostbyname(args[1]);
    if (server == NULL) {
        fprintf(stderr, "ERROR, no such host\n");
        exit(0);
    }
    struct sockaddr_in server_address;
    bzero((char *) &server_address, sizeof(server_address));
    server_address.sin_family = AF_INET;
    bcopy(server->h_addr,
          (char *) &server_address.sin_addr.s_addr,
          (size_t) server->h_length);
    server_address.sin_port = htons((uint16_t) atoi(args[2]));
    if (connect(socket_handler, (struct sockaddr *) &server_address, sizeof(server_address)) < 0) {
        error("ERROR connecting");
    }
}

void open_socket() {
    socket_handler = socket(AF_INET, SOCK_STREAM, 0);
    if (socket_handler < 0) {
        error("ERROR opening socket");
    }
}