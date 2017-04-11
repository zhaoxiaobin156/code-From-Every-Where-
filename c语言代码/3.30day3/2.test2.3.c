#include<stdio.h>

int main(void){
    int num;
	scanf("%d",&num);
	if(num % 5 == 0 && num % 7 == 0){
	   printf("yes\n");
	}else{
	   printf("no\n");
	}
	return 0;
}
