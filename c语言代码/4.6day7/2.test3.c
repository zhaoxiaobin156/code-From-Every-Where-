#include<stdio.h>

int main(void){
	int a[3][3] = {1,2,3,4,5,6,7,8,9};
	int sum1 = 0;
	int sum2 = 0;
	for(int i = 0;i < 3;i++){
		for(int j = 0;j < 3;j++){
			if(i == j){
				sum1 += a[i][j];
			}
			if(i + j == 2){
				sum2 += a[i][j];
			}
		}
	}
	printf("sum1 = %d\nsum2 = %d\n",sum1,sum2);
	return 0;
}
