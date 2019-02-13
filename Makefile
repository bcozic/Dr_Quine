# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bcozic <bcozic@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/02/03 15:35:13 by bcozic            #+#    #+#              #
#    Updated: 2019/02/13 13:40:21 by bcozic           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all : c asm haskell

c :
	@make -C C

asm :
	@make -C ASM

haskell :
	@make -C HASKELL

clean : c_clean asm_clean haskell_clean

c_clean :
	@make -C C clean

asm_clean :
	@make -C ASM clean

haskell_clean :
	@make -C HASKELL clean

fclean : c_fclean asm_fclean haskell_fclean

c_fclean :
	@make -C C fclean

asm_fclean :
	@make -C ASM fclean

haskell_fclean :
	@make -C HASKELL fclean

re : fclean all
	
.PHONY : all c asm haskell clean c_clean asm_clean haskell_clean fclean c_fclean asm_fclean haskell_fclean re