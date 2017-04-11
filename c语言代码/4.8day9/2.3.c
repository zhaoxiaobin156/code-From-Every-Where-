#include<stdio.h>

#include<stdlib.h>
int main(void){
	void *p = malloc(sizeof 4);
	//C99后可直接写成int *p = malloc(sizeof 4)且不用强转类型
	if(p == NULL){
		return -1;
	}
	printf("p = %p\n",p);
	int *q = (void *)p;//发生类型强转(void转int)
	*q = 100;
	printf("*q = %d\n",*q);
	free(q);//提前释放 不释放 重复释放
	q == NULL;
	return 0;
}
