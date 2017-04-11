#include<stdio.h>

int main(void){
	int a[5] = {1,2,3,4};
	int i;
	//实现位数的移动，条件表达式就是腾出的空间
	for(i = 3;i >= 0;i--){
		a[i + 1] = a[i];
	}
	a[0] = 5;
	for(i = 0;i < 5;i++){
		printf("%d ",a[i]);
	}
	printf("\n");
	return 0;
}
