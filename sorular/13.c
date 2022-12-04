#include <stdio.h>

int	main (void) 
{
    char s[] = "alex";
    printf("%lu", sizeof(s));
    printf("%lu", sizeof(&s[1]));
    return(0);
}

// writed by ecayir
