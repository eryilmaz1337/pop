#include <stdio.h>
#include <stdlib.h>

int	main()
{
	int	*p;

	p = (int *)malloc(sizeof(char) * 8);
	p[0] = 50;
	p[1] = 'h';
	printf("%c%d", p[0],p[1]);
}

// writed by acetin
