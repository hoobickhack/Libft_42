/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memmove.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: isouaidi <isouaidi@sudent.42nice.fr>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/03/30 16:05:32 by isouaidi          #+#    #+#             */
/*   Updated: 2023/03/31 17:03:05 by isouaidi         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memmove(void *dest, const void *src, size_t n)
{
	size_t	i;
	char	*sr;
	char	*ds;

	i = 0;
	sr = (char *)src;
	ds = (char *)dest;
	if (!dest && !src)
		return (0);
	if (ds > sr)
	{
		while (i < n)
		{
			ds[n - 1] = sr[n - 1];
			n--;
		}
	}
	else
		ft_memcpy(dest, src, n);
	return (dest);
}
