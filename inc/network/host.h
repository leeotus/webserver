#ifndef __HOST_H__
#define __HOST_H__

#include <stdint.h>

typedef struct {
    char *server_addr;
    uint32_t port;
} host_addr;

#endif