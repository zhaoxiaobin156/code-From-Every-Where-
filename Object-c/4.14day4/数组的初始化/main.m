//
//  main.m
//  数组的初始化
//
//  Created by mac on 16/4/14.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //不可变的数组直接初始化
        NSArray *arr = @[@"001",@"002"];
        //利用对象方法
        //a 将初始化好的数组来初始化另外一个数组
        NSArray *arr1 = [[NSArray alloc] initWithArray:arr];
        NSLog(@"%@",arr1);
        //b 自定义对象方法
        NSArray *arr2 = [[NSArray alloc] initWithObjects:@"001",@"002",@"003", nil];
        NSLog(@"%@",arr2);
        //类方法
        NSArray *arr3 = [NSArray arrayWithArray:arr];
        NSLog(@"%@",arr3);
        NSArray *arr4 = [NSArray arrayWithObjects:@"0034",@"0089", nil];
        NSLog(@"%@",arr4);
    }
    return 0;
}
