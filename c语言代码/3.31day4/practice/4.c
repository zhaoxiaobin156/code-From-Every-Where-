#include<stdio.h>

int main(void){
    for(int i = 1;i <= 3;i++){
	    for(int k = 1;k <= 3 - i;k++){
		    printf(" ");
		}
		for(int j = 1;j <= i;j++){
		    printf("%c",'A'+j-1);
		}
		for(int l = 2;l <= i;l++){
		    printf("%c",'A'+i-l);
		}
		printf("\n");
	}
	return 0;
}
