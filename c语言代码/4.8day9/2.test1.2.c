#include<stdio.h>

int main(void){
	char *ch[7] = {"Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"};
	for(int i = 0;i < 7;i++){
		printf("%s\n",ch[i]);
	}
	return 0;
}
