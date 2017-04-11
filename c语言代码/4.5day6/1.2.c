#include<stdio.h>

int test(int n){
	//递归
	int c;
	if(n == 1){//什么时候结束
		return 1;
	}else{
		c = test(n - 1) + n;
		return c;
	}
}
int main(void){
	int n;
	scanf("%d",&n);
	printf("sum = %d\n",test(n));
	return 0;
}
