#include<stdio.h>

int main(void){
	int a,b;
	scanf("%d%d",&a,&b);
	int *p1 = &a;
	int *p2 = &b;
	int max = *p1 > *p2? *p1:*p2;
	printf("max = %d\n",max);
	return 0;
}
