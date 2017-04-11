#include<stdio.h>

int main(void){
	char ch;
	int count = 0;
	while(1){
		scanf("%c",&ch);
		if(ch >= '0' && ch <= '9'){
		   count++;
		}
		if(ch == '\n'){
		   break;
		}
	}
	printf("%d\n",count);
	return 0;
}
