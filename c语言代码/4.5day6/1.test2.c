#include<stdio.h>

int max(int a,int b,int c){
    int max = a > b? a:b;
	return max > c? max:c;
}
int main(void){
    printf("%d\n",max(7,8,9));
    return 0;
}
