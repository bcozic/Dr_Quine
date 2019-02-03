# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bcozic <bcozic@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/02/03 15:35:13 by bcozic            #+#    #+#              #
#    Updated: 2019/02/03 15:35:59 by bcozic           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all : colleen grace sully

$(LIBFT) : lib

colleen :
	@make -C Colleen

grace :
	@make -C Grace

sully :
	@make -C Sully

clean : colleen_clean grace_clean sully_clean

colleen_clean :
	@make -C Colleen clean

grace_clean :
	@make -C Grace clean

sully_clean :
	@make -C Sully clean

fclean : colleen_fclean grace_fclean sully_fclean

colleen_fclean :
	@make -C Colleen fclean

grace_fclean :
	@make -C Grace fclean

sully_fclean :
	@make -C Sully fclean

re : fclean all
	
.PHONY : all colleen grace sully clean colleen_clean grace_clean sully_clean fclean colleen_fclean grace_fclean sully_fclean re