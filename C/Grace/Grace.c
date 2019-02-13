#define PROTO() int open(const char *path, int oflag, ...);int close(int fildes);int dprintf(int fd, const char * restrict format, ...);MAIN()
#define S1 "#define PROTO() int open(const char *path, int oflag, ...);int close(int fildes);int dprintf(int fd, const char * restrict format, ...);MAIN()%c#define S1 %c%s%c%c#define MAIN() int main(){int fd = open(%cGrace_kid.c%c, 512 | 1, 256);dprintf(fd, S1, 10, 34, S1, 34, 10, 34, 34, 10, 10, 10, 10);close(fd);}%c/*%c	Comment%c*/%cPROTO()"
#define MAIN() int main(){int fd = open("Grace_kid.c", 512 | 1, 256);dprintf(fd, S1, 10, 34, S1, 34, 10, 34, 34, 10, 10, 10, 10);close(fd);}
/*
	Comment
*/
PROTO()