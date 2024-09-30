#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdbool.h>

#include <sys/socket.h>
#include <arpa/inet.h>

#define BUF_SIZE 1024

int main(int argc, char **argv)
{
    int res,len;
    int recv, pos;
    int sock;
    struct sockaddr_in serv_addr; 
    char buffer[BUF_SIZE];

    if(argc != 3)
    {
        printf("Usage: %s <ip> <port>\r\n", argv[0]);
        exit(0);
    }

    sock = socket(PF_INET, SOCK_STREAM, 0);
    if(sock == -1)
    {
        printf("socket() error!\r\n");
        exit(-1);
    }

    memset(&serv_addr, 0, sizeof(serv_addr));
    serv_addr.sin_family = AF_INET;
    serv_addr.sin_addr.s_addr = inet_addr(argv[1]);
    serv_addr.sin_port = htons(atoi(argv[2]));

    res = connect(sock, (struct sockaddr*)&serv_addr, sizeof(serv_addr));
    if(res == -1)
    {
        printf("connect() error!\r\n");
        exit(-2);
    }
    
    while(true)
    { 
        fputs("Input some message(q to quit):", stdout);
        fgets(buffer, BUF_SIZE-1, stdin);
        if(!strcmp(buffer, "q\n") || !strcmp(buffer, "Q\n"))
            break;
        len = strlen(buffer);
        buffer[len-1] = '#';        // 修改\n为#字符表示结尾
        write(sock, buffer, strlen(buffer));

        pos = 0;
        do {
            printf("do..while...\r\n");
            recv = read(sock, &buffer[pos], 1);
            if(buffer[pos] == '#')
                break;
            pos += recv;
        } while(recv != -1);
        buffer[pos] = 0;

        printf("Recv from server: %s\r\n", buffer);
    }
    
    close(sock);
    return 0;
}
