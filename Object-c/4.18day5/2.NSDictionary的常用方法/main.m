//
//  main.m
//  2.NSDictionary的常用方法
//
//  Created by mac on 16/4/18.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        //1.求键值对个数
        
        NSDictionary *dic = @{@"dawa":@"大力娃",@"erwa":@"千里眼",@"sanwa":@"水娃",@"siwa":@"水娃"};
        NSInteger count = [dic count];
        NSLog(@"count = %ld",count);
        
        //2.根据key求对应的: objectForKey，dic[key]
        
        NSLog(@"value = %@",[dic objectForKey:@"erwa"]);
        NSLog(@"value2 = %@",dic[@"sanwa"]);
        
        //3.求所有的key。。。求所有的value。。。
        
        //a.求所有的key
        
        NSArray *array = [dic allKeys];
        NSLog(@"array = %@",array);
        
        //b.求所有的value(整体打印字典或数组，不能显示中文)
        
        NSLog(@"value:%@",[dic allValues]);
        
        //c.求指定value对应的所有key
        
        NSLog(@"%@",[dic allKeysForObject:@"水娃"]);
    }
    return 0;
}
