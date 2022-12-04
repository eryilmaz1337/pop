#include <stdio.h>
#include <string.h>

char	*ft_strncat(char *dest, char *src, unsigned int nb)
{
	unsigned int	i1;
	unsigned int	i2;

	i1 = 0;
	i2 = 0;
	while (dest[i1] != '\0')
		i1++;
	while (src[i2] != '\0' && i2 < nb)
	{
		dest[i1] = src[i2];
		i1++;
		i2++;
	}
	dest[i1] = '\0';
	return (dest);
}

int	main()
{
    char	s1[5] = "a";
    char	s2[5] = "b";
    ft_strncat(s1, s2, 1);
    printf("%c%s", s1[1], "C");
}

// writed by  acetin
