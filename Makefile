# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gbadi <gbadi@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/01 22:16:59 by gbadi             #+#    #+#              #
#    Updated: 2015/03/01 23:22:39 by gbadi            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = gcc

CFLAGS = -Wall -Wextra -Werror

SOURCE = main.c\
		ascii.c\
		ascii2.c\
		display.c\
		draw.c\
		ft_get_pair.c\
		game.c\
		horizontal.c\
		input.c\
		vertical.c\
		play.c\
		play2.c\
		play3.c\
		print.c\
		print2.c\
		print3.c\
		tab.c

SRCO = $(SOURCE:%.c=%.o)

NAME = game_2048

all: $(NAME)

$(NAME): $(SRCO)

	@echo " 222222222222222         000000000            444444444       888888888     "
	@echo "2:::::::::::::::22     00:::::::::00         4::::::::4     88:::::::::88   "
	@echo "2::::::222222:::::2  00:::::::::::::00      4:::::::::4   88:::::::::::::88 "
	@echo "2222222     2:::::2 0:::::::000:::::::0    4::::44::::4  8::::::88888::::::8"
	@echo "            2:::::2 0::::::0   0::::::0   4::::4 4::::4  8:::::8     8:::::8"
	@echo "            2:::::2 0:::::0     0:::::0  4::::4  4::::4  8:::::8     8:::::8"
	@echo "         2222::::2  0:::::0     0:::::0 4::::4   4::::4   8:::::88888:::::8 "
	@echo "    22222::::::22   0:::::0 000 0:::::04::::444444::::444  8:::::::::::::8  "
	@echo "  22::::::::222     0:::::0 000 0:::::04::::::::::::::::4 8:::::88888:::::8 "
	@echo " 2:::::22222        0:::::0     0:::::04444444444:::::4448:::::8     8:::::8"
	@echo "2:::::2             0:::::0     0:::::0          4::::4  8:::::8     8:::::8"
	@echo "2:::::2             0::::::0   0::::::0          4::::4  8:::::8     8:::::8"
	@echo "2:::::2       2222220:::::::000:::::::0          4::::4  8::::::88888::::::8"
	@echo "2::::::2222222:::::2 00:::::::::::::00         44::::::44 88:::::::::::::88 "
	@echo "2::::::::::::::::::2   00:::::::::00           4::::::::4   88:::::::::88   "
	@echo "22222222222222222222     000000000             4444444444     888888888     "



	@make -C libft
	@$(CC) $(CFLAGS) $(SOURCE) -L./libft/ -lft -o $(NAME) -I./includes/ -lncurses

%.o: %.c ./includes/game.h
	@$(CC) -o $@  -I includes/ -c $< -lncurses $(FLAGS)

clean:
	@make -C libft clean
	@/bin/rm -rf $(SRCO)

fclean: clean
	@make -C libft fclean
	@/bin/rm -rf $(NAME)

re: fclean all
