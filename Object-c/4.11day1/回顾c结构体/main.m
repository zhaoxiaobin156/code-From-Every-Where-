//
//  main.m
//  回顾c结构体
//
//  Created by mac on 16/4/11.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>
struct stu{
    //成员属性
    int age;
    char *name;
    char *adr;
};

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        struct stu wukong;
        wukong.age = 520;
        wukong.name = "wukong";
        wukong.adr = "huaguoshan";
        printf("%d,%s,%s\n",wukong.age,wukong.name,wukong.adr);
    }
    return 0;
}
