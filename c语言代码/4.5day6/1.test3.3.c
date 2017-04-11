#include<stdio.h>

int test(int n){
	if(n == 1 || n == 2){
		return 1;
	}else{
		int ret = test(n - 1) + test(n - 2);
		return ret;
	}
}
int main(void){
	int n;
	scanf("%d",&n);
	for(int i = 1;i <= n;i++){
		printf("%d ",test(i));
	}
	printf("\n");
	return 0;
}
