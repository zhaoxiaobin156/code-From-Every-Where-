//
//  main.m
//  赋初值方法
//
//  Created by mac on 16/4/13.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //直接赋初值
        NSString *str = @"hello world";
        //a 对象方法
        //1 利用已经初始化好的字符串初始化另外一个字符串
        NSString *str1 = [[NSString alloc] initWithString:str];
        NSLog(@"%@",str1);
        //2 自定义带格式控制符的字符串去初始化一个字符串
        NSString *str2 = [[NSString alloc] initWithFormat:@"%d",1605];
        NSLog(@"%@",str2);
        //b 类方法
        NSString *str3 = [NSString stringWithString:str];
        NSLog(@"%@",str3);
        NSString *str4 = [NSString stringWithFormat:@"%d",1605];
        NSLog(@"%@",str4);
    }
    return 0;
}
