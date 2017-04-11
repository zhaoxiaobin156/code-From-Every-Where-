#include<stdio.h>

void test(int *a,int *b){
	int sum = *a + *b;
	int sub = *a - *b;
	*a = sum;
	*b = sub;
}
int main(void){
	int a,b;
	scanf("%d%d",&a,&b);
	test(&a,&b);
	printf("sum = %d,sub = %d\n",a,b);
	return 0;
}
