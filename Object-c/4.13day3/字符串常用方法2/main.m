//
//  main.m
//  字符串常用方法2
//
//  Created by mac on 16/4/13.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //isEqualTo判断字符串是否相等
        NSString *str = @"hello world";
        NSString *str1 = @"hello worle";
        BOOL vavl = [str isEqualTo:str1];
        if (vavl) {
            NSLog(@"相等");
        }else{
            NSLog(@"不相等");
        }
        //按ASICC码比较
        NSComparisonResult result = [str compare:str1];
        //NSComparisonResult类型重定义 本质上是NSInterger
        //枚举型
        //NSOrderedAscending 是升序(-1)
        //NSOrderedDescending 是降序(+1)
        //NSOrderedSame 一样大
        if (result == NSOrderedSame) {
            NSLog(@"一样大");
        }else if (result == NSOrderedDescending){
            NSLog(@"第一个大");
        }else if (result == NSOrderedAscending){
            NSLog(@"第二个大");
        }
        NSString *str2 = @"sina.com.cn";
        //判断是前缀还是后缀
        //hasPrefix是前缀 hasSuffix是后缀
        BOOL vavl1 = [str2 hasPrefix:@"sina"];
        if (vavl1) {
            NSLog(@"是前缀");
        }
        vavl1 = [str2 hasSuffix:@".cn"];
        if (vavl1) {
            NSLog(@"是后缀");
        }
        //将一个数字字符串转成普通类型
        NSString *str3 = @"333";
        NSLog(@"%d",[str3 intValue]);
        NSLog(@"%ld",[str3 integerValue]);
        NSLog(@"%g",[str3 doubleValue]);
    }
    return 0;
}
