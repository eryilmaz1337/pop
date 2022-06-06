#include <stdio.h>
#include <stdlib.h>

int	main(void)
{
	int	i;
	int	a[5] = {0,1,2,3,4};
	int	*b;
	int	**c;
	int	***d;

	i = 0;
	b = (int *)&a;
	c = (int **)&b;
	d = (int ***)&c;
	while (*b)
	{
		*b += 2;
		b++;
	}
	**c += (int) i++;
	b++;
	***d -= 3;
	printf("%i", ***d);
}

// writed by rtosun