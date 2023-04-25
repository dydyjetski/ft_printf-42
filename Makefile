# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dmeurant <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/19 23:48:06 by dmeurant          #+#    #+#              #
#    Updated: 2023/04/19 23:48:06 by dmeurant         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS = ${filter-out $(wildcard *_bonus.c), $(wildcard *.c)}
OBJS = $(patsubst %.c, %.o, $(SRCS))
CFLAGS = -Wall -Wextra -Werror
NAME = libftprintf.a

all : $(NAME)

clean :
	rm -f $(OBJS)

fclean : clean
	rm -f $(NAME)

re : fclean all

$(NAME) : $(OBJS)
	gcc $(CFLAGS) -c $(SRCS)
	ar rc $(NAME) $(OBJS)

.PHONY : all clean fclean re