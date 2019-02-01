#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>

int main()
{
	int nb = 5;
	if (nb <= 0) return (0);
	char file[16] = "Sully_X.c";
	file[6]='0'+nb-1;
	char cmd[512];
	char *s = "#include <fcntl.h>%c#include <unistd.h>%c#include <stdio.h>%c#include <stdlib.h>%c#include <string.h>%c#include <sys/stat.h>%c%cint main()%c{%c	int nb = %d;%c	if (nb <= 0) return (0);%c	char file[16] = %cSully_X.c%c;%c	file[6]='0'+nb-1;%c	char cmd[512];%c	char *s = %c%s%c;%c	int fd = open(file, O_CREAT | O_RDWR,S_IWUSR | S_IRUSR);%c	dprintf(fd,s,10,10,10,10,10,10,10,10,10,nb-1,10,10,34,34,10,10,10,34,s,34,10,10,10,10,34,34,10,10,10,10,34,34,10,10,10);%c	close(fd);%c	strcpy(cmd, %cgcc -Wall -Wextra -Werror -o Sully_X Sully_X.c%c);%c	cmd[35]='0'+nb-1;%c	cmd[43]='0'+nb-1;%c	system(cmd);%c	strcpy(cmd, %c./Sully_X%c);%c	cmd[8]='0'+nb-1;%c	system(cmd);%c}";
	int fd = open(file, O_CREAT | O_RDWR,S_IWUSR | S_IRUSR);
	dprintf(fd,s,10,10,10,10,10,10,10,10,10,nb-1,10,10,34,34,10,10,10,34,s,34,10,10,10,10,34,34,10,10,10,10,34,34,10,10,10);
	close(fd);
	strcpy(cmd, "gcc -Wall -Wextra -Werror -o Sully_X Sully_X.c");
	cmd[35]='0'+nb-1;
	cmd[43]='0'+nb-1;
	system(cmd);
	strcpy(cmd, "./Sully_X");
	cmd[8]='0'+nb-1;
	system(cmd);
}