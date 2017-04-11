#include<stdio.h>

int main(void){
    char ch;
	scanf("%c",&ch);
	if(ch >= 'A' && ch <= 'Z'){
	   printf("%d\n",ch);
	}else{
	   printf("%c\n",ch);
	}
	return 0;
}
