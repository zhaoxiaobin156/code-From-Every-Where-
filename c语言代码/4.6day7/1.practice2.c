#include<stdio.h>

int main(void){
	int arr[5] = {1,2,3,4};
	int i;
	for(i = 3;i >= 2;i--){
		arr[i + 1] = arr[i];
	}
	arr[2] = 0;
	for(i = 0;i < 5;i++){
		printf("%d ",arr[i]);
	}
	printf("\n");
	return 0;
}
