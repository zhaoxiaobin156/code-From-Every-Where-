#include<stdio.h>

int main(void){
    printf("%d\n",8 / 2);
	printf("%d\n",8 % 2);
	//"%"求的是余数 左右两边不允许出现小数
	printf("%f\n",8 / 2.0);
	printf("%d\n",1234 % 1000);
	printf("%d\n",1234 / 1000);
	printf("%d\n",1234 / 100 % 10);
	printf("%d%d%d%d\n",1234 % 10,1234 / 10 % 10,1234 / 100 % 10,1234 / 1000);
    return 0;
}
