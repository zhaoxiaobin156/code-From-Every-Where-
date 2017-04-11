#include<stdio.h>

int main(void){
	int a,b;
	scanf("%d%d",&a,&b);
	int *p1 = &a;
	int *p2 = &b;
	int temp = *p1;
	*p1 = *p2;
	*p2 = temp;
	printf("%d %d\n",a,b);
	return 0;
}
