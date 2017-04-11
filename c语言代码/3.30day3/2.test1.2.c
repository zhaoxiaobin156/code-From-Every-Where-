#include<stdio.h>

int main(void){
    char ch;
	scanf("%c",&ch);
	if((ch >= 'A' && ch <= 'Z') || (ch >= 'a' && ch <= 'z')){
	    printf("%c是字母\n",ch);
	}
	if(ch >= '0' && ch <= '9'){
	   printf("%c是数字\n",ch);
	}
	return 0;
}
