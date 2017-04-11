//
//  main.m
//  字符串常用方法
//
//  Created by mac on 16/4/13.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSString *str = @"hello world";
        //统计字符串元数个数
        NSLog(@"len = %ld",[str length]);
        //characterAtIndex 根据给定的下标求出对应的元素
        char c = [str characterAtIndex:2];
        NSLog(@"%c",c);
        //将给定的字符串逆序输出
        for (NSInteger i = [str length] - 1;i >= 0; i--) {
            printf("%c",[str characterAtIndex:i]);
        }
        printf("\n");
    }
    return 0;
}
