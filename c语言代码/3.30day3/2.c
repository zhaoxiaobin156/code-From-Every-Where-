#include<stdio.h>

int main(void){
	if(5 < 7){
		printf("%d\n",5 < 7);
	}
	int a,b;
	scanf("%d%d",&a,&b);
	if(a > b){
		int temp = a;
		a = b;
		b = temp;
	}
	printf("a = %d,b = %d\n",a,b);
	return 0;
}
