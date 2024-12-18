# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mlancelo <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/10 12:02:40 by mlancelo          #+#    #+#              #
#    Updated: 2024/10/17 12:10:05 by mlancelo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = cc

SRC =	ft_isalpha.c \
	ft_memset.c  \
	ft_bzero.c \
	ft_memcpy.c \
	ft_memmove.c \
	ft_isalnum.c \
	ft_isascii.c \
	ft_isdigit.c \
	ft_isprint.c \
	ft_strlen.c \
	ft_strlcat.c \
	ft_strlcpy.c \
	ft_strncmp.c \
	ft_memchr.c \
	ft_toupper.c \
	ft_tolower.c \
	ft_strchr.c \
	ft_strnstr.c \
	ft_atoi.c \
	ft_strrchr.c \
	ft_memcmp.c \
	ft_calloc.c \
	ft_strdup.c \
	ft_substr.c \
	ft_strjoin.c \
	ft_strtrim.c \
	ft_split.c \
	ft_itoa.c \
	ft_strmapi.c \
	ft_striteri.c \
	ft_putchar_fd.c \
	ft_putstr_fd.c \
	ft_putnbr_fd.c \
	ft_putendl_fd.c \

SRC_BONUS =	ft_lstnew_bonus.c \
		ft_lstadd_front_bonus.c \
		ft_lstsize_bonus.c \
		ft_lstlast_bonus.c \
		ft_lstadd_back_bonus.c \
		ft_lstdelone_bonus.c \
		ft_lstclear_bonus.c \
		ft_lstiter_bonus.c \
		ft_lstmap_bonus.c \

OBJ =	$(SRC:.c=.o)

OBJ_BONUS = $(SRC_BONUS:.c=.o)

CFLAGS += -Wall -Wextra -Werror

NAME =	libft.a

all:	$(NAME) $(OBJ)

bonus : $(OBJ_BONUS)
	ar r $(NAME) $(OBJ_BONUS)

$(NAME): $(OBJ)
	ar r $(NAME) $(OBJ)
	
so:
	$(CC) -nostartfiles -fPIC $(CFLAGS) $(SRC) $(SRC_BONUS)
	gcc -nostartfiles -shared -o libft.so $(OBJ) $(OBJ_BONUS)

clean:
	rm -f $(OBJ) $(OBJ_BONUS)

fclean:	clean
	rm -f $(NAME) $(OBJ) $(OBJ_BONUS)

re:	fclean all

.PHONY: all clean fclean re bonus
