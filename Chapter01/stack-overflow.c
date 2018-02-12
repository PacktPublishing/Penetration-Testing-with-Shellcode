#include <stdio.h>
#include <string.h>
// This function will copy the user's input into buffer
void copytobuffer(char* input)
{
    char buffer[15];
    strcpy (buffer,input);
}

int main (int argc, char **argv[])
{

    copytobuffer(argv[1]);
    return 0;

}
