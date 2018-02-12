#include <stdio.h>
void function1()
{

    int y = 1;
    printf("This is function1\n");

}
void function2()
{

    int z = 2;
    printf("This is function2\n");

}
int main (int argc, char **argv[])
{

    int x = 10;
    printf("This is the main function\n");

    function1();
    printf("After calling function1\n");

    function2();
    printf("After calling function2");

    return 0;
}
