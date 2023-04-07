# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: isouaidi <isouaidi@student.42nice.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/03/30 18:26:00 by isouaidi          #+#    #+#              #
#    Updated: 2023/04/07 12:26:33 by isouaidi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


SRCS = $ 	ft_atoi.c ft_bzero.c ft_isalnum.c ft_isalpha.c ft_isascii.c \
			ft_isdigit.c ft_isprint.c ft_memcpy.c ft_memmove.c ft_memset.c \
			ft_strlen.c ft_strlcpy.c ft_toupper.c ft_tolower.c \
			ft_strchr.c ft_strrchr.c ft_strncmp.c ft_memchr.c \
			ft_memcmp.c ft_strlcat.c ft_strnstr.c ft_strdup.c \
			ft_calloc.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c \
			ft_putnbr_fd.c ft_strjoin.c ft_substr.c ft_strtrim.c \
			ft_itoa.c ft_striteri.c ft_strmapi.c ft_split.c \

SRCS_B = $ ft_lstnew.c ft_lstadd_front.c ft_lstsize.c \
			ft_lstlast.c ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c \
			ft_lstiter.c ft_lstmap.c \

OBJS = ${SRCS:.c=.o}
OBJS_B = ${SRCS_B:.c=.o}
NAME = libft.a
CC = gcc
CFLAGS = -Wall -Wextra -Werror
AR = ar rcs 
RM = rm -rf

all : ${NAME}

${NAME}:${OBJS}
	${AR} ${NAME} ${OBJS}
	
bonus: ${OBJS_B}
			${AR} ${NAME} ${OBJS_B}

.c.o:
	${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

clean:
	${RM} ${OBJS} ${OBJS_B}

fclean: clean
	${RM} ${NAME}

re: fclean all

.PHONY: all clean fclean re bonus
