//
//  main.m
//  练习1
//
//  Created by mac on 16/4/18.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Person *p1 = [[Person alloc] initWithName:@"guanyu" andAge:30 andSex:@"Man"];
        Person *p2 = [[Person alloc] initWithName:@"zhangfei" andAge:28 andSex:@"Man"];
        Person *p3 = [[Person alloc] initWithName:@"zhaoyun" andAge:25 andSex:@"Man"];
        Person *p4 = [[Person alloc] initWithName:@"machao" andAge:24 andSex:@"Man"];
        Person *p5 = [[Person alloc] initWithName:@"huangzhong" andAge:60 andSex:@"Man"];
        
        //添加
        
        NSMutableDictionary *mutDic = [[NSMutableDictionary alloc] init];
        [mutDic setObject:p5 forKey:[p1 name]];
        [mutDic setObject:p2 forKey:[p2 name]];
        [mutDic setObject:p3 forKey:[p3 name]];
        [mutDic setObject:p4 forKey:[p4 name]];
        [mutDic setObject:p5 forKey:[p5 name]];
        NSLog(@"添加:%@",mutDic);
        
        //修改
        
        [mutDic setObject:p1 forKey:[p1 name]];
        NSLog(@"修改:%@",mutDic);
        
        //按键名查找
        
        NSLog(@"查找:%@",mutDic[@"zhaoyun"]);
        
        //按值年龄查找，从终端输入
        
        printf("请输入一个年龄:");
        NSInteger age = 0;
        scanf("%ld",&age);
        for (id key in mutDic) {
            id obj = mutDic[key];
            if (age == [obj age]) {
                NSLog(@"找到:%@",obj);
                [mutDic removeObjectForKey:key];//找到后直接删除
                break;
            }
        }
        NSLog(@"删除后:%@",mutDic);
    }
    return 0;
}
