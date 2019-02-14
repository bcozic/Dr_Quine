# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bcozic <bcozic@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/03/11 14:46:09 by bcozic            #+#    #+#              #
#    Updated: 2019/02/14 13:22:10 by bcozic           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = Grace

NO_COLOR =\x1b[0m

GREEN =\x1b[32;01m

RED =\x1b[31;01m

SRC = Grace.s

FILES = Grace_kid.s

OBJ = $(addprefix obj/, $(SRC:.s=.o))

all : obj $(NAME)

obj :
	@mkdir -p obj

obj/%.o: %.s
	nasm -f macho64 $< -o $@

$(NAME) : $(OBJ)
	gcc -lSystem -o $(NAME) $(OBJ)
	@echo "$(GREEN)$(NAME) ASM OK$(NO_COLOR)"

clean :
	rm -f $(OBJ)
	@echo "$(RED)$(NAME) ASM obj Deleted$(NO_COLOR)"

fclean : clean
	rm -f $(NAME)
	rm -f $(FILES)
	@echo "$(RED)$(NAME) ASM Deleted$(NO_COLOR)"

re : fclean all

.PHONY : all obj clean fclean re