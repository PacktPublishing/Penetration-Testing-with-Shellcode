#include <stdio.h>
#include <unistd.h>

int overflow()
{
    char buf[80];
    int r;
    read(0, buf, 500);
    printf("The buffer content %d, %s", r, buf);
    return 0;
}

int main(int argc, char *argv[]) 
{
    printf("Starting /bin/ls");
    overflow();
    return 0;
}
