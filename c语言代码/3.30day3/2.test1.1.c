#include<stdio.h>

int main(void){
    int num;
	scanf("%d",&num);
	if(num % 2 == 0){
	   printf("%d是偶数\n",num);
	}
	if(num % 2 != 0){
	   printf("%d是奇数\n",num);
	}
	return 0;
}
