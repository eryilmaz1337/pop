#include <stdio.h>

void	meow(int a)
{
	a += 10;
}

int	hawhaw(int y)
{
	static int	c;
	while (y--)
		c++;
	return (c * 2);
}

int	main(void)
{
	static int	num;
	meow(num);
	num += hawhaw(1);
	num += hawhaw(2);
	printf("%i",num);
}

// writed by msevuk