# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bcozic <bcozic@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/02/03 15:34:42 by bcozic            #+#    #+#              #
#    Updated: 2019/02/22 17:42:53 by bcozic           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = Sully

NO_COLOR =\x1b[0m

GREEN =\x1b[32;01m

RED =\x1b[31;01m

SRC = Sully.hs

FILES = Sully_0.hs Sully_0 Sully_0.hi Sully_0.o Sully_1.hs Sully_1 Sully_1.hi\
		Sully_1.o Sully_2.hs Sully_2 Sully_2.hi Sully_2.o Sully_3.hs Sully_3\
		Sully_3.hi Sully_3.o Sully_4.hs Sully_4 Sully_4.hi Sully_4.o Sully_5.hs\
		Sully_5 Sully_5.hi Sully_5.o

OBJ = $(SRC:.hs=.o) $(SRC:.hs=.hi)

all : $(NAME)

$(NAME) :
	ghc --make $(SRC) -o $(NAME)
	@echo "$(GREEN)$(NAME) HASKELL OK$(NO_COLOR)"

clean :
	rm -f $(OBJ)
	@echo "$(RED)$(NAME) HASKELL obj Deleted$(NO_COLOR)"

fclean : clean
	rm -f $(NAME)
	rm -f $(FILES)
	@echo "$(RED)$(NAME) HASKELL and $(FILES) Deleted$(NO_COLOR)"

re : fclean all
	
.PHONY : all obj clean fclean re