#include<stdio.h>

int main(void){
	int a[10];
	int i;
	int n;
	char ch;
	for(i = 0;i < 10;i++){
		scanf("%d",&a[i]);
		ch = getchar();
		if(ch == '\n'){
			break;
		}
	}
	n = i;
	for(i = 0;i <= n;i++){
		printf("%d",a[i]);
	}
	printf("\n");
	return 0;
}
