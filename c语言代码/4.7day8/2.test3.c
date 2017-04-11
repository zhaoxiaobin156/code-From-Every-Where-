#include<stdio.h>

void myCopy(int *p1,int *p2,int len){
	int i;
	for(i = 0;i < len;i++){
		p1[i] = p2[i];
		printf("%d ",p1[i]);
	}
}
int main(void){
	int a1[5] = {0};
	int a2[5] = {1,2,3,4,5};
	myCopy(a1,a2,5);
	printf("\n");
	return 0;
}
