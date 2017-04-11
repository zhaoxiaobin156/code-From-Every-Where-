//
//  main.m
//  5.SEL的使用
//
//  Created by mac on 16/4/18.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        //SEL的第一种用法
        
        Person *p = [[Person alloc] init];
        SEL sel;//声明一个SEL变量
        sel = @selector(eat);//存储方法名
//        [p performSelector:sel];//执行sel中存储的方法
        
        //SEL的第二种用法: SEL以参数形式出现
        
        [p action:sel];
        [p action:@selector(sleep)];
    }
    return 0;
}
