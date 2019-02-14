# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bcozic <bcozic@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/03/11 14:46:09 by bcozic            #+#    #+#              #
#    Updated: 2019/02/14 13:24:26 by bcozic           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = Sully

NO_COLOR =\x1b[0m

GREEN =\x1b[32;01m

RED =\x1b[31;01m

SRC = Sully.s

FILES = Sully_0.s Sully_0 Sully_1.s Sully_1 Sully_2.s Sully_2 Sully_3.s\
		Sully_3 Sully_4.s Sully_4

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
	rm -rf obj
	@echo "$(RED)$(NAME) ASM obj Deleted$(NO_COLOR)"

fclean : clean
	rm -f $(NAME)
	rm -f $(FILES)
	@echo "$(RED)$(NAME) ASM Deleted$(NO_COLOR)"

re : fclean all

.PHONY : all obj clean fclean re