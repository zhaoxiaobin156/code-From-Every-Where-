#include<stdio.h>

int num = 100;
int test1(){
    int num = 0;
	num++;
	return num;
}
int test2(){
    int static a = 0;
	a++;
	return a;
}
int main(void){
    printf("num = %d\n",test1());
	printf("a = %d\n",test2());
	printf("a = %d\n",test2());
	printf("a = %d\n",test2());
	printf("a = %d\n",test2());
	printf("a = %d\n",test2());
    return 0;
}
