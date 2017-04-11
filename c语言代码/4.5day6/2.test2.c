#include<stdio.h>

int main(void){
	char ch[100];
	int i;
	int n;
	int count1 = 0;
	int count2 = 0;
	for(i = 0;i < 100;i++){
		scanf("%c",&ch[i]);
		if(ch[i] == '\n'){
			break;
		}
	}
	n = i - 1;
	for(i = 0;i <= n;i++){
		if(ch[i] >= 'a' && ch[i] <= 'z'){
			count1++;
			printf("%c",ch[i] -= 32);
		}else if(ch[i] >= 'A' && ch[i] <= 'Z'){
			count2++;
			printf("%c",ch[i] += 32);
		}else{
			printf("%c",ch[i]);
		}
	}
	printf("\n小写字母的个数是%d,大写字母的个数是%d\n",count1,count2);
	return 0;
}
