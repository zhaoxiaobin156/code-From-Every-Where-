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
int main(void){
	int (*p)(int a,int b);
	int a;
	scanf("%d",&a);
	switch(a){
		case 1:
			p = add;
			printf("%d\n",p(5,8));
			break;
		case 2:
			p = sub;
			printf("%d\n",p(5,8));
			break;
		case 3:
			p = mul;
			printf("%d\n",p(5,8));
			break;
		case 4:
			p = div;
			printf("%d\n",p(5,8));
			break;
	}
	return 0;
}
