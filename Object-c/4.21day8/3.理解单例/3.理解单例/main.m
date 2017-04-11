//
//  main.m
//  3.理解单例
//
//  Created by mac on 16/4/21.
//  Copyright (c) 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "MyFile.h"

void fun()
{
    int i=0;
    NSLog(@"i = %d",++i);
}

void staFun()
{
    static int i = 0;   //静态变量只初始化一次
    NSLog(@"i = %d",++i);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        //单例的概念：
          //1. 是一个类方法
          //2. 在程序执行过程中，只开辟一次空间
        
        //单例的创建方法一般以default或shared开头
        
        //验证一个类方法是否为单例： 看返回的对象是否相同
        MyFile *file1 = [MyFile defaultManager];
        MyFile *file2 = [MyFile defaultManager];
        
        NSLog(@"file1=%p,file2=%p",file1,file2);
        
        //单例的作用：
            //1. 多次调用,只开辟一次,节约内存；
            //2. 共享内存，方便传值
        
        
        //回顾c的静态变量的使用：
        fun();     //1
        fun();     //1
        staFun();  //1
        staFun();  //2
    }
    return 0;
}
