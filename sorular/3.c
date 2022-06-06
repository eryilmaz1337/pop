#include <stdio.h>

int	main(void)
{
	int	a;
	int	*b;
	int	**c;

	a = 2;
	b = (int *)&a;
	*b += 2;
	a++;
	c = (int **)&b;
	**c += 10;
	printf("%i", *b);
}

// writed by rtosun