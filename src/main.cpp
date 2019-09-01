#include <stdio.h>
extern "C"
{
    #include <imath.h>
}

int main()
{
    printf("We will use 'iMath' Shared library. \n");
    int x = sum(5, 8);
    x = incr(x);
    x = incr(x);
    printf("Total is %i \n", x);

    return 0;
}
