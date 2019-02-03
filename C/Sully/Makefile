# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bcozic <bcozic@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/02/03 15:34:42 by bcozic            #+#    #+#              #
#    Updated: 2019/02/03 15:42:05 by bcozic           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = Sully

NO_COLOR =\x1b[0m

GREEN =\x1b[32;01m

RED =\x1b[31;01m

CFLAGS = -Wall -Wextra -Werror

SRC = Sully.c

FILES = Sully_0.c Sully_0 Sully_1.c Sully_1 Sully_2.c Sully_2 Sully_3.c\
		Sully_3 Sully_4.c Sully_4

OBJ = $(addprefix obj/, $(SRC:.c=.o))

all : obj $(NAME)

obj :
	@mkdir -p obj

obj/%.o: %.c
	gcc $(CFLAGS) -c $< -o $@

$(NAME) : $(OBJ)
	gcc -o $(NAME) $(OBJ)
	@echo "$(GREEN)$(NAME) OK$(NO_COLOR)"

clean :
	rm -f $(OBJ)
	@echo "$(RED)$(NAME) obj Deleted$(NO_COLOR)"

fclean : clean
	rm -f $(NAME)
	rm -f $(FILES)
	@echo "$(RED)$(NAME) and $(FILES) Deleted$(NO_COLOR)"

re : fclean all
	
.PHONY : all obj clean fclean re