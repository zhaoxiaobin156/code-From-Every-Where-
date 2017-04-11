#include<stdio.h>

int main(void){
	int a[100];
	int i,j;
	for(i = 0;i < 100;i++){
		scanf("%d",a + i);
		char ch = getchar();
		if(ch == '\n'){
			break;
		}
	}
	for(j = 0;j < i + 1;j++){
		printf("%d ",*(a + j));
	}
	printf("\n");
	return 0;
}
