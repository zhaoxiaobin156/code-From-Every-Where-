#include<stdio.h>

int main(void){
	char ch1,ch2;
	scanf("%c",&ch1);
	if(ch1 == 'M'){
		printf("星期一\n");
	}else if(ch1 == 'T'){
		getchar();
		//从键盘获取一个"\n"
		scanf("%c",&ch2);
		if(ch2 == 'u'){
			printf("星期二\n");
		}else if(ch2 == 'h'){
			printf("星期四\n");
		}else{
			printf("没有该字母对应的星期几\n");
		}
	}else if(ch1 == 'W'){
		printf("星期三\n");
	}else if(ch1 == 'F'){
		printf("星期五\n");
	}else if(ch1 == 'S'){
		getchar();
		scanf("%c",&ch2);
		if(ch2 == 'a'){
			printf("星期六\n");
		}else if(ch2 == 'u'){
			printf("星期天\n");
		}else{
			printf("没有该字母对应的星期几\n");
		}
	}else{
		printf("没有该字母对应的星期几\n");
	}
	//if和else if语句，当表达式值为1时直接输出，而不管其它
	return 0;
}
