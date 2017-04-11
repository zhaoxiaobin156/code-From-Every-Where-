#include<stdio.h>
#include<stdlib.h>

int main(void){
    int num;
	scanf("%d",&num);
	if(num < 0)
	printf("%d\n",abs(num));
	//abs(num)表示取num的绝对值
	return 0;
}
