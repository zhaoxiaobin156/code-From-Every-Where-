#include<stdio.h>

int main(void){
	int arr[5] = {1,2,5,6};
	int num;
	scanf("%d",&num);
	int i;
	for(i = 0;i < 4;i++){
		if(arr[i] > num){
			break;
		}
	}
	int index = i;
	for(i = 3;i >= index;i--){
	    arr[i + 1] = arr[i];
	}
	arr[index] = num;
	for(i = 0;i < 5;i++){
		printf("%d ",arr[i]);
	}
	printf("\n");
	return 0;
}
