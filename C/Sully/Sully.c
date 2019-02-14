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
	char file[16];
	sprintf(file, "Sully_%d.c", nb - 1);
	char cmd[512];
	char *s = "#include <fcntl.h>%c#include <unistd.h>%c#include <stdio.h>%c#include <stdlib.h>%c#include <string.h>%c#include <sys/stat.h>%c%cint main()%c{%c	int nb = %d;%c	if (nb <= 0) return (0);%c	char file[16];%c	sprintf(file, %cSully_%cd.c%c, nb - 1);%c	char cmd[512];%c	char *s = %c%s%c;%c	int fd = open(file, O_CREAT | O_RDWR,S_IWUSR | S_IRUSR);%c	dprintf(fd,s,10,10,10,10,10,10,10,10,10,nb-1,10,10,10,34,37,34,10,10,34,s,34,10,10,10,10,34,37,34,10,34,37,37,34,10,10,34,37,34,10,10,10);%c	close(fd);%c	sprintf(file, %cSully_%cd%c, nb - 1);%c	sprintf(cmd, %cgcc -Wall -Wextra -Werror -o %cs %cs.c%c, file, file);%c	system(cmd);%c	sprintf(cmd, %c./%cs%c, file);%c	system(cmd);%c}%c";
	int fd = open(file, O_CREAT | O_RDWR,S_IWUSR | S_IRUSR);
	dprintf(fd,s,10,10,10,10,10,10,10,10,10,nb-1,10,10,10,34,37,34,10,10,34,s,34,10,10,10,10,34,37,34,10,34,37,37,34,10,10,34,37,34,10,10,10);
	close(fd);
	sprintf(file, "Sully_%d", nb - 1);
	sprintf(cmd, "gcc -Wall -Wextra -Werror -o %s %s.c", file, file);
	system(cmd);
	sprintf(cmd, "./%s", file);
	system(cmd);
}
