#include <stdio.h>
/*commentaire*/
void print(char *s){printf(s,10,10,10,10,10,34,s,34,10);}
int main(){
/*commentaire*/
char *s="#include <stdio.h>%c/*commentaire*/%cvoid print(char *s){printf(s,10,10,10,10,10,34,s,34,10);}%cint main(){%c/*commentaire*/%cchar *s=%c%s%c;%cprint(s);}";
print(s);}