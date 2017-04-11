#include<stdio.h>

void test(int num){
    //什么时候结束
	if(num / 2 == 0){
		printf("%d",num % 2);
	}else{//什么时候调用自己
		test(num / 2);
		printf("%d",num % 2);
	}
}
int main(void){
	int num;
	scanf("%d",&num);
	test(num);
	printf("\n");
	return 0;
}
