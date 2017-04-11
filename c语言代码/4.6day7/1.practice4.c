#include<stdio.h>

int main(void){
	int arr[100];
	int i,j;
	for(i = 0;i < 100;i++){
		scanf("%d",&arr[i]);
		char ch = getchar();
		if(ch == '\n'){
			break;
		}
	}
	int max = arr[0];
	int index;
	for(j = 1;j < i + 1;j++){
		if(max < arr[j]){
			max = arr[j];
			index = j;
		}
	}
	for(j = index;j < i;j++){
		arr[j] = arr[j + 1];
	}
	for(j = 0;j < i;j++){
		printf("%d ",arr[j]);
	}
	printf("\n");
	return 0;
}
