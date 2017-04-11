//
//  main.m
//  数组元素交换位置
//
//  Created by mac on 16/4/14.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSMutableArray *arr = [[NSMutableArray alloc] initWithObjects:@"001",@"002",@"003",@"004", nil];
        [arr exchangeObjectAtIndex:0 withObjectAtIndex:3];
        NSLog(@"%@",arr);
        //将数组逆序
        for (NSInteger i = 0; i < [arr count] / 2; i++) {
            [arr exchangeObjectAtIndex:i withObjectAtIndex:[arr count] - 1 - i];
        }
        NSLog(@"%@",arr);
    }
    return 0;
}
