/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   sec.c                                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: eryilmaz <eryilmaz@student.42kocaeli.com.  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/06/06 17:37:55 by eryilmaz          #+#    #+#             */
/*   Updated: 2022/06/06 17:37:56 by eryilmaz         ###   ########.tr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include <stdio.h>

int	main(int index, char **data)
{
	int	i;

	i = 2;
	while (i <= atoi(data[1]))
		i++;
	printf("%s", data[i]);
}
