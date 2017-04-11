//
//  main.m
//  3.字典的遍历
//
//  Created by mac on 16/4/18.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        NSDictionary *dic = @{@"aa":@"11",@"bb":@"22"};
        
        //1.快速枚举法: 遍历的是key
        
        for (NSString *key in dic) {
            NSLog(@"key:%@,value:%@",key,dic[key]);
        }
        
        //2.枚举器法
        
        //keyEnumerator 将字典的key放入枚举器中，然后一次调用下一个元素，取出key对象
        
        NSEnumerator *enumer = [dic keyEnumerator];
        id key = nil;
        while (key = [enumer nextObject]) {
            NSLog(@"枚举:key:%@,value:%@",key,dic[key]);
        }
        
        //objectEnumerator 将字典的value放入枚举器中，然后一次调用下一个元素，取出value对象
        
        enumer = [dic objectEnumerator];
        id obj = nil;
        while (obj = [enumer nextObject]) {
            NSLog(@"枚举:obj = %@",obj);
        }
    }
    return 0;
}
