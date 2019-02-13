#include <stdio.h>
/*
	commentaire
*/
void	print(char *s)
{
	printf(s,10,10,10,10,10,10,10,10,10,10,10,10,10,10,34,s,34,10,10,10);
}

int		main()
{
	/*
		commentaire
	*/
	char *s="#include <stdio.h>%c/*%c	commentaire%c*/%cvoid	print(char *s)%c{%c	printf(s,10,10,10,10,10,10,10,10,10,10,10,10,10,10,34,s,34,10,10,10);%c}%c%cint		main()%c{%c	/*%c		commentaire%c	*/%c	char *s=%c%s%c;%c	print(s);%c}%c";
	print(s);
}
