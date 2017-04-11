//
//  main.m
//  练习2
//
//  Created by mac on 16/4/14.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSMutableArray *arr = [[NSMutableArray alloc] initWithObjects:@"001",@"002",@"003",@"004",@"005",@"006", nil];
        for (NSInteger i = [arr count] - 1; i > 0; i--) {
            if (i % 2 == 0) {
                [arr removeObjectAtIndex:i];
            }
        }
        NSLog(@"%@",arr);
    }
    return 0;
}
