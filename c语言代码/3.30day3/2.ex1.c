#include<stdio.h>

int main(void){
    int a,b;
	scanf("%d%d",&a,&b);
	if(a % b == 0){
	   printf("%d能被%d整除\n",a,b);
	}
	if(a % b != 0){
	   printf("%d不能被%d整除\n",a,b);
	}
	return 0;
}
