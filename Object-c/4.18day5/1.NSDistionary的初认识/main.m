//
//  main.m
//  1.NSDistionary的初认识
//
//  Created by mac on 16/4/18.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        //直接初始化字典: @{key:value,...}
        
        NSDictionary *dic = @{@"one":@"11",@"two":@"22"};//字典以键值对的形式出现: @"one"是key @"11"是value
        NSLog(@"dic = %@",dic);
        
        //字典的间接初始化: 对象方法、类方法
        
        //1.对象方法: initWith...
        
        //a.通过一个字典初始化另一个字典
        
        NSDictionary *dic1 = [[NSDictionary alloc] initWithDictionary:dic];
        NSLog(@"dic1 = %@",dic1);
        
        //b.通过key数组与value数组去初始化另一个字典
        //注意: 键值对都是配对的，否则会崩溃
        
        NSDictionary *dic2 = [[NSDictionary alloc] initWithObjects:@[@"laoda",@"laoer",@"laosan"] forKeys:@[@"liubei",@"guanyu",@"zhangfei"]];
        NSLog(@"dic2 = %@",dic2);//通过打印可知: 字典的存储方式是无序的
        
        //instanceType: 类似id，通过对象指针，只能用于返回值类型
        
        //c.通过自定义的键值对初始化另一个字典
        
        NSDictionary *dic3 = [[NSDictionary alloc] initWithObjectsAndKeys:@"qq",@"ww",@"ee",@"aa",@"55",@"ww", nil];
        NSLog(@"dic3 = %@",dic3);//value可以重复，但key具有唯一性(重复的话只出现一对)
        
        //2.类方法: dictionaryWith...
        
        //a.通过一个字典初始化另一个字典
        
        NSDictionary *dic4 = [NSDictionary dictionaryWithDictionary:dic];
        NSLog(@"dic4 = %@",dic4);
        
        //b.通过key数组与value数组去初始化另一个字典
        
        NSDictionary *dic5 = [NSDictionary dictionaryWithObjects:@[@"1",@"2"] forKeys:@[@"a",@"b"]];
        NSLog(@"dic5 = %@",dic5);
        
        //c.通过自定义的键值对初始化另一个字典
        
        NSDictionary *dic6 = [NSDictionary dictionaryWithObjectsAndKeys:@"val1",@"key1",@"val2",@"key2", nil];
        NSLog(@"dic6 = %@",dic6);
        
        //字典的key一般为字符串，value一般为字符串或对象
    }
    return 0;
}
