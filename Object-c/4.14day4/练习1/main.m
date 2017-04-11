//
//  main.m
//  练习1
//
//  Created by mac on 16/4/14.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSArray *arr = @[@"001",@"002",@"003"];
        NSMutableArray *arr1 = [[NSMutableArray alloc] initWithArray:arr];
        char a[20];
        scanf("%s",a);
        NSString *str = [NSString stringWithCString:a encoding:NSUTF8StringEncoding];
        for (NSInteger i = 0; i < [arr1 count]; i++) {
            if ([arr1[i] isEqualTo:str]) {
                [arr1 removeObject:str];
            }
        }
        NSLog(@"%@",arr1);
    }
    return 0;
}
