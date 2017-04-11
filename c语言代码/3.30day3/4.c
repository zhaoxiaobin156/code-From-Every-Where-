#include<stdio.h>

int main(void){
	char ch;
	scanf("%c",&ch);
	//if(ch >= 'A' && ch <= 'Z'){
	//printf("竟然是大写，你牛逼！\n");
	//}
	if((ch >= 'A' && ch <= 'Z') || (ch >= 'a' && ch <= 'z')){
		printf("是字母字符\n");
	}
	return 0;
}
