//
//  main.m
//  数组
//
//  Created by mac on 16/4/14.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //oc数组是一个有序指针对象集合
        //在写的时候直接赋值 @[@" ",@" "]
        NSArray *arr = @[@"001",@"002"];
        NSLog(@"%@",arr);
        //NSNull表示一个空指针对象类 并且在数组中占一个占位符
        NSNull *mynull = [NSNull null];
        Person  *p = [[Person alloc] init];
        NSArray *arr1 = @[@"001",mynull,p];
        NSLog(@"%@",arr1);
        /*总结:数组元素仍然从0到数组长度－1
              元素全部是指针对象(地址)
              不管类型 只要是指针对象就可以放到数组中去 c要求是同一类型*/
    }
    return 0;
}
