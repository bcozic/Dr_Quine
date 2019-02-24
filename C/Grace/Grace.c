#define BEGIN() int open(const char *path, int oflag, ...);\
				int close(int fildes);\
				int dprintf(int fd, const char * restrict format, ...);\
				MAIN()
#define S1 "#define BEGIN() int open(const char *path, int oflag, ...);%c%c				int close(int fildes);%c%c				int dprintf(int fd, const char * restrict format, ...);%c%c				MAIN()%c#define S1 %c%s%c%c#define MAIN() int main(){%c%c				int fd = open(%cGrace_kid.c%c, 512 | 1, 256);%c%c				if (fd == -1) return (1);%c%c				dprintf(fd, S1, 92, 10, 92, 10, 92, 10, 10, 34, S1, 34, 10, 92, 10, 34, 34, 92, 10, 92, 10, 92, 10, 10, 10, 10, 10, 10);%c%c				close(fd);}%c/*%c	Comment%c*/%cBEGIN()%c"
#define MAIN() int main(){\
				int fd = open("Grace_kid.c", 512 | 1, 256);\
				if (fd == -1) return (1);\
				dprintf(fd, S1, 92, 10, 92, 10, 92, 10, 10, 34, S1, 34, 10, 92, 10, 34, 34, 92, 10, 92, 10, 92, 10, 10, 10, 10, 10, 10);\
				close(fd);}
/*
	Comment
*/
BEGIN()
