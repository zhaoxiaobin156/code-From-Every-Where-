#include<stdio.h>

int main(void){
	char *ch[3];
	char ch1 = 'a';
	char ch2 = 'b';
	char ch3 = 'c';
	ch[0] = &ch1;
	ch[1] = &ch2;
	ch[2] = &ch3;
	for(int i = 0;i < 3;i++){
		printf("%c ",*ch[i]);
	}
	printf("\n");
	return 0;
}
