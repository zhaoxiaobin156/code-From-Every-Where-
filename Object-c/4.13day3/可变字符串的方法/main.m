//
//  main.m
//  可变字符串的方法
//
//  Created by mac on 16/4/13.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSString *str = @"hello world";
        NSMutableString *str1 = [[NSMutableString alloc] initWithString:str];
        NSLog(@"%@",str1);
        //增
        //自动在原字符串末尾添加字符串
        [str1 appendString:@"zuibang"];
        NSLog(@"%@",str1);
        [str1 appendFormat:@"%d",1605];
        NSLog(@"%@",str1);
        //设置(strcpy)
        [str1 setString:@"hello ios"];
        NSLog(@"%@",str1);
        //在指定的位置插入字符串(不能超过原字符串长度)
        [str1 insertString:@"zhangsan" atIndex:9];
        NSLog(@"%@",str1);
        //改
        //replaceCharactersInRange:(NSRange) 其中NSRange -> NSMakeRange 将指定范围内的字符串改为设定的字符串
        [str1 replaceCharactersInRange:NSMakeRange(0, 3) withString:@"lisi"];
        NSLog(@"%@",str1);
        //替换
        //第一个 要被替换的子串
        //第二个 最后在原字符中要显示的
        //第三个 默认NSLiteralSearch
        //第四个 NSMakeRange(位置:0 长度:整个字符串的长度)
        [str1 replaceOccurrencesOfString:@"zhangsan" withString:@"lisi" options:NSLiteralSearch range:NSMakeRange(0, [str1 length])];
        NSLog(@"%@",str1);
        //删除
        //删除指定范围内的子串
        [str1 deleteCharactersInRange:NSMakeRange(4, 5)];
        NSLog(@"%@",str1);
    }
    return 0;
}
