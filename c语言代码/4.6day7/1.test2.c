#include<stdio.h>

int main(void){
	int a[100];
	int i,j;
	for(i = 0;i < 100;i++){
		scanf("%d",&a[i]);
		char ch = getchar();
		if(ch == '\n'){
			break;
		}
	}
	//实现循环移动起始值就是要删除的下标值
	for(j = 2;j < i;j++){
		a[j] = a[j + 1];
	}
	for(j = 0;j < i;j++){
		printf("%d ",a[j]);
	}
	printf("数组长度为%d\n",j);
	return 0;
}
