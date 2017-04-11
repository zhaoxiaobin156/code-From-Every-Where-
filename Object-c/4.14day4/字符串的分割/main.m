//
//  main.m
//  字符串的分割
//
//  Created by mac on 16/4/14.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSString *str = @"when i was young,i like girl";
        //componentsSeparatedByString 传入的参数是以哪个子串作为分割点(作为分割点的子串会消失)
        NSArray *arr = [str componentsSeparatedByString:@"hen"];
        NSLog(@"%@",arr);
        //以字符串作为字符集实例化字符集的对象
        //原字符串中 首位置以及匹配到的地方都是以空串输出
        NSCharacterSet *set = [NSCharacterSet characterSetWithCharactersInString:@"you"];
        arr = [str componentsSeparatedByCharactersInSet:set];
        NSLog(@"%@",arr);
        //删除空串
        NSMutableArray *arr1 = [[NSMutableArray alloc] initWithArray:arr];
        [arr1 removeObject:@""];
        NSLog(@"%@",arr1);
        //字符串拼接
        NSArray *arr2 = @[@"I",@"love",@"china"];
        NSString *str1 = [arr2 componentsJoinedByString:@" "];
        NSLog(@"%@",str1);
    }
    return 0;
}
