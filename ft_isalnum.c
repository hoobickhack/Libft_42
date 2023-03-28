/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isalnum.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: isouaidi <isouaidi@sudent.42nice.fr>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/03/28 14:28:01 by isouaidi          #+#    #+#             */
/*   Updated: 2023/03/28 15:23:10 by isouaidi         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */
#include <unistd.h>
#include <stdio.h>

int	ft_isalnum(int c)
{
	return ((c >= '0' && c <= '9')
		|| ((c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z')));
}

/*int main(void)
{
	printf("%d\n",ft_isalnum('-'));
	printf("%d\n",isalnum('-'));
}*/
