//
//  main.m
//  字符串
//
//  Created by mac on 16/4/13.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        char *p = "zhangsan";
        NSString *str = @"zhangsan";
        NSLog(@"%@",str);
        NSString *str1 = [NSString stringWithCString:p encoding:NSUTF8StringEncoding];//c转oc,NSUTF8StringEncoding编码方式
        NSLog(@"%@",str1);
        NSString *str2 = @"hello world";
        const char *p1 = [str2 UTF8String];//将oc字符串转为c字符串
        NSLog(@"%s",p1);
        
        
    }
    return 0;
}
