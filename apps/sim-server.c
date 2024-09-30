#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>

#include <sys/socket.h>
#include <arpa/inet.h>

#define BUF_SIZE 1024

int main(int argc, char **argv)
{
    int res,i;
    int recv, pos;
    int serv_sock, clnt_sock;
    struct sockaddr_in serv_addr;
    struct sockaddr_in clnt_addr;
    socklen_t clnt_addr_len = sizeof(clnt_addr);
    char buffer[BUF_SIZE];

    if(argc != 2)
    {
        printf("Usage: %s <port>\r\n", argv[0]);
        exit(0);
    }

    serv_sock = socket(PF_INET, SOCK_STREAM, 0);
    if(serv_sock == -1)
    {
        printf("socket() error!\r\n");
        exit(-1);
    }

    memset(&serv_addr, 0, sizeof(serv_addr));
    serv_addr.sin_family = AF_INET;
    serv_addr.sin_addr.s_addr = htonl(INADDR_ANY);
    serv_addr.sin_port = htons(atoi(argv[1]));

    res = bind(serv_sock, (struct sockaddr*)&serv_addr, sizeof(serv_addr));
    if(res == -1)
    {
        printf("bind() error!\r\n");
        exit(-2);
    }

    res = listen(serv_sock, 5);
    if(res == -1)
    {
        printf("listen() error!\r\n");
        exit(-3);
    }

    for(i=0;i<5;++i)
    {
        clnt_sock = accept(serv_sock, (struct sockaddr*)&clnt_addr, &clnt_addr_len);
        if(clnt_sock == -1)
        {
            printf("accept() error!\r\n");
            exit(-4);
        }
        pos = 0;
        do{
            recv = read(clnt_sock, &buffer[pos], 1);
            if(buffer[pos] == '#')
                break;
            pos += recv;
        }while(recv!=0 || recv!=-1);
        buffer[pos+1] = 0;        // 替换#之后的字符为\0

        printf("recv from client:%s\r\n", buffer);

        // 回声服务器,将收到的消息送回客户端
        write(clnt_sock, buffer, strlen(buffer));
    }

    close(serv_sock);
    close(clnt_sock);

    return 0;
}
