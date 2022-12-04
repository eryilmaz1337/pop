#include <stdio.h>

int	main(void)
{
	int	array[2] = {1907, 100};
	int	number;
	int	*address2;
	int	*address;

	number = 2;
	address = &array[number - 1];
	address2 = address;
	while (--number >= 0)
	{
		printf("%d", *address);
	}
	printf("%ld", address - address2);
}

// writed by ecayir