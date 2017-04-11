#include<stdio.h>
//
int main(void){
	int a;
	scanf("%d",&a);
	while(a != 0){
		printf("%d",a % 2);
		a /= 2;
	}
	printf("\n");
	return 0;
}
