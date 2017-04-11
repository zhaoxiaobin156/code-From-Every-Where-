#include<stdio.h>

void selectSort(int *p,int len){
	int i,j;
	for(i = 0;i < len - 1;i++){
		for(j = i + 1;j < len;j++){
			if(p[i] > p[j]){
				int temp = p[i];
				p[i] = p[j];
				p[j] = temp;
			}
		}
	}
	for(i = 0;i < len;i++){
		printf("%d ",p[i]);
	}
}
int main(void){
	int a[5] = {5,2,4,1,3};
	selectSort(a,5);
	printf("\n");
	return 0;
}
