#include <stdio.h>

int	main(void)
{
	int	a;
	int	*b;

	a = 0;
	a += sizeof(sizeof(a));
	b = (int *)&a;
	if (sizeof(*b) == 8)
		a += 10;
	else if (sizeof(*b) == 4)
		a -= 10;
	*b = *b >> 1;
	printf("%i", a);
}

// writed by rtosun