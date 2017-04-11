#include<stdio.h>

int main(void){
    for(int i = 1;i <= 4;i++){
	    for(int j = 1;j <=5 - i;j++){
		    printf("*");
		}
		printf("\n");
	}
	return 0;
}
