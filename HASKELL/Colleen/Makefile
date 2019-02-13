# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bcozic <bcozic@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/02/03 15:34:42 by bcozic            #+#    #+#              #
#    Updated: 2019/02/13 13:39:37 by bcozic           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = Colleen

NO_COLOR =\x1b[0m

GREEN =\x1b[32;01m

RED =\x1b[31;01m

SRC = Colleen.hs

FILES = Colleen_0.hs Colleen_0 Colleen_0.hi Colleen_0.o

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