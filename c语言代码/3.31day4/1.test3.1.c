#include<stdio.h>

int main(void){
    for(int i = 1;i <= 20;i++){
	    if(i == 10 || i == 11){
		   continue;
		}
		printf("%d ",i);
	}
	printf("\n");
	return 0;
}
