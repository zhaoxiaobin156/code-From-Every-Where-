#include<stdio.h>

int main(void){
	int a[100];
	int i,j;
	int min;
	int index;
	for(i = 0;i < 100;i++){
		scanf("%d",&a[i]);
		char ch = getchar();
		if(ch == '\n'){
			break;
		}
	}
	min = a[0];
	for(j = 1;j <= i;j++){
		if(min > a[j]){
			min = a[j];
			index = j;
		}
	}
	printf("%d %d\n",min,index);
	return 0;
}
