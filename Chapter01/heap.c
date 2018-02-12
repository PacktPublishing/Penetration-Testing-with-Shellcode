#include <string.h>
#include <stdlib.h>
void main(int argc, char** argv)
{
// Start allocating the heap
    char* heap=malloc(15);

// Copy the user's input into heap
    strcpy(heap, argv[1]);

// Free the heap section
    free(heap);
}
