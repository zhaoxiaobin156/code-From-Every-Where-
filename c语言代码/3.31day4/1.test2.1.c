#include<stdio.h>

int main(void){
    int sum = 1;
	for(int i = 1;i <= 10;i++){
	    sum *= i;
	}
	printf("%d\n",sum);
	return 0;
}
