#include<stdio.h>
int main(void){
    int a = 5;
	int b = 7;
	printf("交换前a = %d b = %d\n",a,b);
	int temp = a;
	a = b;
	b = temp;
	printf("交换后a = %d b = %d\n",a,b);
}
