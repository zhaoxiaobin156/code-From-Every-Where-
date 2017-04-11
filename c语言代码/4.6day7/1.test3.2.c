#include<stdio.h>
//在一个有序数组中，插入一个数，数组仍然有序
int main(void){
	int a[5] = {1,2,3,4};
	int num;
	scanf("%d",&num);
	int i;
	for(i = 0;i < 4;i++){
		if(num < a[i]){
			break;
		}
	}
	int index = i;//记录要移开元素的下标
	//腾出位置
	for(i = 3;i >= index;i--){
		a[i + 1] = a[i];
	}
	a[index] = num;//添加元素
	for(i = 0;i < 5;i++){
		printf("%d ",a[i]);
	}
	printf("\n");
	return 0;
}
