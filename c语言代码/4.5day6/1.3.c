//问第5个学生的年龄，回答比第4个大2岁
//问第4个学生的年龄，回答比第3个大2岁
//问第3个学生的年龄，回答比第2个大2岁
//问第2个学生的年龄，回答比第1个大2岁
//问第1个学生的年龄，10岁
#include<stdio.h>

int age(int n){
	int c;
	if(n == 1){
		return 10;
	}else{
		c = age(n - 1) + 2;
		return c;
	}
}
int main(void){
	printf("第5个学生的年龄：%d\n",age(5));
	return 0;
}
