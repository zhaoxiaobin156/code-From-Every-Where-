#include<stdio.h>

int main(void){
	int score[3][3] = {81,86,87,88,82,90,91,92,80};
	int max = score[0][1];
	int min = score[0][1];
	int a,b,c,d;
	for(int i = 0;i < 3;i++){
		for(int j = 1;j < 3;j++){
			if(max < score[i][j]){
				max = score[i][j];
				a = i;
				b = j;
			}
			if(min > score[i][j]){
				c = i;
				d = j;
			}
		}
	}
	printf("最高分：%d 下标：%d%d\n最低分：%d 下标：%d%d\n",score[a][b],a,b,score[c][d],c,d);
	return 0;
}
