//
//  main.m
//  数组的常用方法
//
//  Created by mac on 16/4/14.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSArray *arr = @[@"001",@"002",@"003"];
        //count 统计数组个数
        NSLog(@"len = %ld",[arr count]);
        //indexOfObject 根据给定的元素求出对应的下标
        NSLog(@"%ld",[arr indexOfObject:@"003"]);
        //objectAtIndex 根据给定的下标求出对应的元素
        NSLog(@"%@",[arr objectAtIndex:2]);
        //判断在数组中是否包含给定的元素
        BOOL vavl = [arr containsObject:@"003"];
        if (vavl) {
            NSLog(@"包含");
        }
    }
    return 0;
}
