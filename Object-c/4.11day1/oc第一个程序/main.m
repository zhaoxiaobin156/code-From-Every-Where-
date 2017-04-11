//
//  main.m
//  oc第一个程序
//
//  Created by mac on 16/4/11.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>
/*import相当于include
 foundation系统框架
 int main入口函数
 */


int main(int argc, const char * argv[]) {
    @autoreleasepool {//内存管理地址池
        // insert code here...
        NSLog(@"Hello, World!");//NSLog相当于printf,自动换行
        //oc扩展了数据类型,兼容c的语法
        int a = 10;
        NSLog(@"a = %d",a);
        NSInteger b = 20;//代表长整型
        NSLog(@"b = %ld",b);
        NSUInteger c = 30;//代表无符号长整型
        NSLog(@"c = %lu",c);
        CGFloat d = 40;//代表浮点型
        NSLog(@"d = %.2f",d);
        bool vavl = YES;//bool类型的值只有1和0
        NSLog(@"%d",vavl);
    }
    return 0;
}
