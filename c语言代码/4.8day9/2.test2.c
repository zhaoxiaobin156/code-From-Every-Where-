#include<stdio.h>

void myScanf(int (*p)[3],int len){
	int i,j;
	for(i = 0;i < len;i++){
		for(j = 0;j < 3;j++){
			scanf("%d",&p[i][j]);
		}
	}
}
int main(void){
	int a[2][3];
	myScanf(a,2);
	return 0;
}
