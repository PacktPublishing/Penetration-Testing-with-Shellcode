#include <stdio.h>
#include <string.h>
void copytobuffer(char* input)
{
    char buffer[15];
    strcpy (buffer,input);
}
int main (int argc, char *argv[])
{
    int local_variable = 1;
    copytobuffer(argv[1]);
    return 0;
}
