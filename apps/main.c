#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <netdb.h>

int main(int argc, char **argv)
{
    int i;
    struct hostent *host;
    if(argc != 2)
    {
        printf("Usage: %s <addr>\r\n", argv[0]);
        exit(0);
    }
    host = gethostbyname(argv[1]);
    if(host == NULL)
    {
        printf("gethost...error!\r\n");
        exit(-1);
    }

    printf("host->h_name:%s\r\n", host->h_name);
    for(i=0;host->h_aliases[i]!=NULL;++i)
    {
        printf("Alias hostname %d: %s\r\n", i+1, host->h_aliases[i]);
    }
    printf("host->h_addrtype:%s\r\n", ((host->h_addrtype == AF_INET)?"AF_INET":"AF_INET6"));
    printf("host->h_length:%d\r\n", host->h_length);
    for (i=0; host->h_addr_list[i]!=NULL; ++i) {
        printf(
            "host ip %d : %s\r\n",
            i+1, 
            inet_ntoa(*((struct in_addr*)host->h_addr_list[i]))
        );
    }
    return 0;
}
