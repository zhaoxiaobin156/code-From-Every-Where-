#include<stdio.h>
int main(){
	int a;
	int b = 33;
	printf("b = %d\n",b);
	printf("b = %o\n",b);
	printf("b = %x\n",b);
	char ch = 'a';
	printf("b = %d\n",ch);
	printf("b = %c\n",ch);
	float h = 3.14;
	printf("h = %f\n",h);
    printf("h = %E\n",h);
	printf("h = %e\n",h);
	printf("h = %.2f\n",h);
	printf("ch = %ld\n",sizeof(ch));
	//sizeof是一个无符号型，普通的%d表示32位,但是有一个      符号位  %ld 64位  %lu是无符号长整型
	b = 7;
	printf("b = %d\n",b);
	//printf不是输出语句，而是输出函数
	return 0;
}
