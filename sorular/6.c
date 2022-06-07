#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int	main(void)
{
	char *str = "b1r i2i 3c 4rt b5s 6lti";
	int	i;
	int	sum;

	sum = i = 0;
	while(*str)
	{
		if  (*str == ' ')
			sum += atoi(str);
		str++;
		i++;
	}
	if (!*str)
		printf("%d", sum);
	else
		printf("%d", sum * 2);
}

// writed by rtosun