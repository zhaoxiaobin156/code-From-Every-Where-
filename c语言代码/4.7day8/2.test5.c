#include<stdio.h>

void test(char *p){
	int i;
	for(i = 0;p[i] != '\0';i++){
		if(p[i] >= 'A' && p[i] <= 'Z'){
			p[i] += 32;
		}
		printf("%c",p[i]);
	}
}
int main(void){
	char ch[100];
    scanf("%s",ch);
	test(ch);
	printf("\n");
	return 0;
}
