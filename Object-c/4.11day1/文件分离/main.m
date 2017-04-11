//
//  main.m
//  文件分离
//
//  Created by mac on 16/4/11.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>//<>系统提懂得文件
#import "Stu.h"//包含自定义类," "自定义文件

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Stu *p = [Stu alloc];
        [p setName:"wukong"];
        [p setAge:520];
        [p setAdr:"huaguoshan"];
        NSLog(@"%s,%ld,%s",[p name],[p age],[p adr]);
    }
    return 0;
}
