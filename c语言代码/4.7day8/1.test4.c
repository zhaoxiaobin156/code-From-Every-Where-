#include<stdio.h>

int sum (int *a,int *b,int *c){
	int sum =  *a + *b + *c;
	*a = -1;
	*b = -1;
	*c = -1;
	return sum;
}
int main(void){
	int a,b,c;
	scanf("%d%d%d",&a,&b,&c);
	printf("sum = %d\n",sum(&a,&b,&c));
	printf("a = %d,b = %d,c = %d\n",a,b,c);
	return 0;
}
