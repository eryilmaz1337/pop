#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int	main(void)
{
	char	a[] = "canodis";
	char	*str;
	int	i;

	i = strlen(a);
	str = a;
	str += i;
	while (i >= 0)
	{
		printf("%c",*str);
		if (i % 2 == 0)
			str--;
		i--;
	}
}

// writed by rtosun