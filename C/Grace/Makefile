# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bcozic <bcozic@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/02/03 15:34:58 by bcozic            #+#    #+#              #
#    Updated: 2019/02/03 18:51:34 by bcozic           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = Grace

NO_COLOR=\x1b[0m

GREEN=\x1b[32;01m

RED=\x1b[31;01m

CFLAGS = -Wall -Wextra -Werror

SRC = Grace.c

FILES = Grace_Kid.c

OBJ = $(addprefix obj/, $(SRC:.c=.o))

all : obj $(NAME)

obj :
	@mkdir -p obj

obj/%.o: %.c
	gcc $(CFLAGS) -c $< -o $@

$(NAME) : $(OBJ)
	gcc -o $(NAME) $(OBJ)
	@echo "$(GREEN)$(NAME) C OK$(NO_COLOR)"

clean :
	rm -f $(OBJ)
	@echo "$(RED)$(NAME) C obj Deleted$(NO_COLOR)"

fclean : clean
	rm -f $(NAME)
	rm -f $(FILES)
	@echo "$(RED)$(NAME) C and $(FILES) Deleted$(NO_COLOR)"

re : fclean all
	
.PHONY : all obj clean fclean re