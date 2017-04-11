#include<stdio.h>

int add(int a,int b){
	return a + b;
}
int sub(int a,int b){
	return a - b;
}
int mul(int a,int b){
	return a * b;
}
int div(int a,int b){
	return a / b;
}
int callBack(int (*p)(int a,int b),int a,int b){//回调函数
     p(a,b);
	 return p(a,b);
}
int main(void){
	int (*p)(int a,int b);
	int a;
	scanf("%d",&a);
	switch(a){
		case 1:
			printf("%d\n",callBack(add,5,8));
			break;
		case 2:
			printf("%d\n",callBack(sub,5,8));
			break;
		case 3:
			printf("%d\n",callBack(mul,5,8));
			break;
		case 4:
			printf("%d\n",callBack(div,5,8));
			break;
	}
	return 0;
}
