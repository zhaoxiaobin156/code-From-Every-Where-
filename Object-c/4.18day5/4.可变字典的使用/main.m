//
//  main.m
//  4.可变字典的使用
//
//  Created by mac on 16/4/18.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        //继承不可变字典，可使用NSString的所有方法
        
        //除了继承NSString的方法外，派生出了新方法
        
        //1.建立一个空字典
        
        NSMutableDictionary *mutDic = [[NSMutableDictionary alloc] init];
        NSMutableDictionary *mutDic1 = [NSMutableDictionary dictionary];
        NSLog(@"对象方法:%@,类方法:%@",mutDic,mutDic1);
        
        //2.添加键值对
        
        //a.如果key唯一，则setObject的作用是添加
        
        [mutDic setObject:@"11" forKey:@"aa"];
        [mutDic setObject:@"22" forKey:@"bb"];
        [mutDic setObject:@"33" forKey:@"cc"];
        [mutDic setObject:@"44" forKey:@"dd"];
        NSLog(@"mutDic = %@",mutDic);
        
        //b.如果key不唯一，则setObject的作用是修改
        
        [mutDic setObject:@"55" forKey:@"cc"];
        NSLog(@"mutDic = %@",mutDic);
        
        //3.删除
        
        //a.删除key对应的键值对
        
        [mutDic removeObjectForKey:@"bb"];
        NSLog(@"mutDic = %@",mutDic);
        
        //b.根据keys的数组集删除键值对
        
        [mutDic removeObjectsForKeys:@[@"aa",@"dd"]];
        NSLog(@"mutDic = %@",mutDic);
        
        //c.清空字典的所有键值对
        
        [mutDic removeAllObjects];
        NSLog(@"mutDic = %@",mutDic);
        
        //4.替换，通过另一个字典替换当前字典
        
        [mutDic setDictionary:@{@"33":@"zhangsan",@"44":@"lisi"}];
        NSLog(@"替换:%@",mutDic);
    }
    return 0;
}
