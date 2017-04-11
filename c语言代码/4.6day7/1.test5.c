#include<stdio.h>

int main(void){ 
	int a[100];
	int i,j,k;
	for(i = 0;i < 100;i++){
		scanf("%d",&a[i]);
		char ch = getchar();
		if(ch == '\n'){
			break;
		}
	}
	for(j = 0;j < i;j++){
		for(k = 0;k < i - j;k++){
			if(a[k] > a[k + 1]){
			    int temp = a[k];
				a[k] = a[k + 1];
				a[k + 1] = temp;
			}
		}
	}
	for(j = 0;j < i + 1;j++){
		printf("%d ",a[j]);
	}
	printf("\n");
	return 0;
}
