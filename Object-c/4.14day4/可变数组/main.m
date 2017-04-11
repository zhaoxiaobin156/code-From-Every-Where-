//
//  main.m
//  可变数组
//
//  Created by mac on 16/4/14.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSArray *arr = @[@"001",@"002"];
        //对象方法
        NSMutableArray *arr1 = [[NSMutableArray alloc] initWithArray:arr];
        NSLog(@"%@",arr1);
        NSMutableArray *arr2 = [[NSMutableArray alloc] initWithObjects:@"001",@"002",@"003", nil];
        NSLog(@"%@",arr2);
        //创建一个空的可变数组
        NSMutableArray *arr3 = [[NSMutableArray alloc] init];
        NSLog(@"%@",arr3);
        //可变数组继承不可变数组的方法 但是不能直接赋值
        //增
        [arr1 addObject:@"004"];//一次添加一个
        NSLog(@"%@",arr1);
        [arr1 addObjectsFromArray:@[@"005",@"006"]];//数组当中添加数组
        NSLog(@"%@",arr1);
        [arr1 insertObject:@"008" atIndex:5];//在指定位置添加元素时 下标不能超过数组长度
        NSLog(@"%@",arr1);
        //改
        [arr1 replaceObjectAtIndex:2 withObject:@"009"];
        NSLog(@"%@",arr1);
        //删除
        [arr1 removeObject:@"009"];//如果有多个相同元素 则会全部删除
        NSLog(@"%@",arr1);
        [arr1 removeObject:@"001" inRange:NSMakeRange(0, [arr1 count])];//删除指定范围的元素
        NSLog(@"%@",arr1);
        [arr1 removeObjectAtIndex:2];//删除指定下标元素
        NSLog(@"%@",arr1);
        [arr1 removeLastObject];//删除最后一个元素
        NSLog(@"%@",arr1);
        [arr1 removeAllObjects];//删除全部元素
        NSLog(@"%@",arr1);
    }
    return 0;
}
