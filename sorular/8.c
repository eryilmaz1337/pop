#include <stdio.h>

struct s_list
{
	char	*str;
	char	stname[20];
	int		pincode;
};

int	main(void)
{
	struct s_list	*alex;
	struct s_list	lefter;

	lefter.str = "Jhon Mc\0Donald";
	alex = &lefter;
	printf("%%%s%%%s", alex->str, (*alex).str);
	return (0);
}

// writed by ecayir