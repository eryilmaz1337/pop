#include <stdio.h>

int main(void)
{
    int i;
    char *c;
    int *p;
    
    i = 42;
    c = "lldb";
    p = &i;
    *p = *p >> 4;
    c += *p;
    while(*c)
    {
        printf("K");
        c++;
    }
    if (*c == '\0')
        printf("O");
}

// writed by ademirci
