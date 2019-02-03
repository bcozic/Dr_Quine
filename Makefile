# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bcozic <bcozic@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/02/03 15:35:13 by bcozic            #+#    #+#              #
#    Updated: 2019/02/03 18:48:07 by bcozic           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all : c asm

c :
	@make -C C

asm :
	@make -C ASM

clean : c_clean asm_clean

c_clean :
	@make -C C clean

asm_clean :
	@make -C ASM clean

fclean : c_fclean asm_fclean

c_fclean :
	@make -C C fclean

asm_fclean :
	@make -C ASM fclean

re : fclean all
	
.PHONY : all c asm clean c_clean asm_clean fclean c_fclean asm_fclean re