#include<stdio.h>

int main(void){
	for(int i = 1;i <= 3;i++){
		for(int k = 1;k <= 3 - i;k++){
			printf(" ");
		}
		for(int j = 1;j <= 2*i-1;j++){
			if(j <= i){
				printf("%c",'A'+j-1);
			}else{
				printf("%c",'A'+2*i-j-1);
			}
		}
		printf("\n");
	}
	return 0;
}
