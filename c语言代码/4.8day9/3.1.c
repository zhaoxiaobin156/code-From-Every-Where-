#include<stdio.h>

#include<string.h>
void myCopy(char *p1,char *p2){
	int i;
	for(i = 0;p2[i] != '\0';i++){
		p1[i] = p2[i];
	}
	p1[i] = '\0';
}
int main(void){
	//char ch[5];
	//scanf("%s",ch);遇到空格结束
	//gets(ch);有返回值,返回数组首地址
	//字符串连接函数strcat
	char ch[20] = "zhangsan";//数组长度20不能省略且要足够长(能装下ch和ah)
	char ah[] = "lisi";
	printf("%s\n",strcat(ch,ah));//ah第0个元素取代了ch中的'\0'
	//字符串复制函数strcpy(ch,ah),表示ah复制给ch
	myCopy(ch,ah);
	printf("%s\n",ch);
	//字符串比较函数strcmp,按ascii码比较
    char ch1[] = "china";
	char bh[] = "China";
	printf("%d\n",strcmp(ch1,bh));
	/*
	字符完全相同,返回0,遇到'\0'结束
	只要遇到有一个不相同,直接返回相差值,不再管后续字符相差值
	strcmp返回值为第一个位置减第二个位置
	*/
	//strlen字符串统计函数
	printf("%ld %ld\n",strlen(ch1),sizeof(ch1) / sizeof(ch[0]));
	/*
	strlen 统计有效字符,不包括'\0'
	sizeof 统计数组中的元素个数,包括'\0'
	*/
	return 0;
}
