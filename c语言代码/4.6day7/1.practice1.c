#include<stdio.h>

int main(void){
	char ch[] = {'e','c','B','d','a'};
	int i;
	for(i = 0;i < 4;i++){
		for(int j = 0;j < 4 - i;j++){
			if(ch[j] > ch[j + 1]){
				int temp = ch[j];
				ch[j] = ch[j + 1];
				ch[j + 1] = temp;
			}
		}
	}
	for(i = 0;i < 5;i++){
		printf("%c ",ch[i]);
	}
	printf("\n");
	return 0;
}
