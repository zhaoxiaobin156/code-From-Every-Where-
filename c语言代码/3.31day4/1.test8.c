#include<stdio.h>

int main(void){
	int n;
	scanf("%d",&n);
	for(int i = 1;i <= n;i++){
		for(int j = 1;j <= i - 1;j++){
			printf(" ");
		}
		for(int k = 1;k <= 10;k++){
			printf("*");
		}
		printf("\n");
	}
	return 0;
}
