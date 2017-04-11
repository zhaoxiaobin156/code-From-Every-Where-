//
//  main.m
//  字符串常用方法3
//
//  Created by mac on 16/4/13.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSString *str = @"hello world";
        //读取子串
        //str substringFromIndex 是从给定的下标开始一直读到最后
        NSLog(@"%@",[str substringFromIndex:2]);
        //str substringToIndex 是从第0号元素开始读取到给定下标 但不包含给定下标元素
        NSLog(@"%@",[str substringToIndex:2]);
        //查找子串
        //NSRange 返回值类型 是一个struct 返回的是在原字符串的位置和长度
        NSRange range = [str rangeOfString:@"world"];
        if (range.location == NSNotFound) {
            NSLog(@"没有找到");
        }else{
            NSLog(@"%ld,%ld",range.location,range.length);
        }
        //通过一个c语言的结构体去查找子串 返回一个子串
        NSRange range1 = {1,3};
        NSLog(@"%@",[str substringWithRange:range1]);
    }
    return 0;
}
