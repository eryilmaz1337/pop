#include <stdio.h>

int	main(void)
{
	int	dizi[10] = {0,1,2,3,4,5,6,7,8};
	unsigned long	i;

	i = -1;
	while (++i < sizeof(dizi) / sizeof(int))
		dizi[i]++;
	i = -1;
	while (++i < 10)
		printf("%i", dizi[i]);
}

// writed by rtosun