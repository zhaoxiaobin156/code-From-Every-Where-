//
//  main.m
//  DISC
//
//  Created by mac on 16/4/13.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Person *p = [[Person alloc] initWithName:@"zhangsan" angAge:17];
        //NSLog(@"name = %@,age = %ld",[p name],[p age]);
        NSLog(@"%@",p);
        //description在没有重写之前调用是父类的方法 只会打印一个地址,重写之后调用的是当前类的方法 就会打印存在地址里的成员属性的值
    }
    return 0;
}
