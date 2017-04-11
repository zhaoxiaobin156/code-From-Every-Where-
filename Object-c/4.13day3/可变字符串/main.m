//
//  main.m
//  可变字符串
//
//  Created by mac on 16/4/13.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSString *str = @"hello world";//不可变字符串
        /* 可变字符串继承不可变字符串的方法 派生出:增 改 删除
        针对可变字符串不能直接赋值 */
        //将一个不可变的字符串初始化一个可变字符串
        NSMutableString *str1 = [[NSMutableString alloc] initWithString:str];
        NSLog(@"%@",str1);
        //声明一个空的可变字符串
        NSMutableString *str2 = [[NSMutableString alloc] init];
        NSLog(@"%@",str2);
        //
        NSMutableString *str3 = [[NSMutableString alloc] initWithFormat:@"%d",1605];
        NSLog(@"%@",str3);
    }
    return 0;
}
