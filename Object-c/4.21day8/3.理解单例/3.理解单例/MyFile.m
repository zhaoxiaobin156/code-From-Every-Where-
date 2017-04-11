//
//  MyFile.m
//  3.理解单例
//
//  Created by mac on 16/4/21.
//  Copyright (c) 2016年 mac. All rights reserved.
//

#import "MyFile.h"

@implementation MyFile

+(MyFile*)defaultManager
{
    //静态变量只初始化一次
    static MyFile *file = nil;  //初始化静态变量为nil
    if(file == nil)
    {
       //第二次调用defaultManager时，不会进入if中，所以不再开辟空间
       file = [[MyFile alloc] init];
    }
    return file;
}

@end
