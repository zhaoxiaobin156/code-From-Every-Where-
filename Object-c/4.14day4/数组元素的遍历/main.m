//
//  main.m
//  数组元素的遍历
//
//  Created by mac on 16/4/14.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSArray *arr = @[@"001",@"002",@"003"];
        //下标法
        for (NSInteger i = 0; i < [arr count]; i++) {
            NSLog(@"%@",arr[i]);
        }
        //快速枚举法
        //id是个通用类型指针
        for (id obj in arr) {
            NSLog(@"%@",obj);
        }
        //枚举器法
        //首先是从数组中取出对象放在枚举器中
        NSEnumerator *rato = [arr objectEnumerator];
        //循环取出枚举对象
        id obj = nil;
        while (obj = [rato nextObject]) {
            NSLog(@"%@",obj);
        }
        //求数组元素最长的一个 打印最长元素、最长元素长度、最长元素下标
        NSArray *arr1 = @[@"0",@"01",@"002",@"0003"];
        NSInteger len = [arr1[0] length];
        NSInteger index = 0;
        for (NSInteger i = 0; i < [arr1 count]; i++) {
            if (len < [arr1[i] length]) {
                len = [arr1[i] length];
                index = i;
            }
        }
        NSLog(@"最长元素为%@,长度为%ld,下标为%ld",arr1[index],len,index);
        id max = arr1[0];
        len = 0;
        for (id obj1 in arr1) {
            if (len < [obj1 length]) {
                len = [obj1 length];
                max = obj1;
            }
        }
        NSLog(@"最长元素为%@,长度为%ld,下标为%ld",max,len,[arr1 indexOfObject:max]);
        return 0;
    }
}