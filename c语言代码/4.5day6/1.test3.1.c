#include<stdio.h>

int mul(int n){
	int c;
	if(n == 1){
		return 1;
	}else{
		c = mul(n - 1)*n;
		return c;
	}
}
int main(void){
	int n;
	scanf("%d",&n);
	printf("%d\n",mul(n));
	return 0;
}
