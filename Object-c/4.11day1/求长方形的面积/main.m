//
//  main.m
//  求长方形的面积
//
//  Created by mac on 16/4/11.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cfx.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Cfx *p = [Cfx alloc];
        [p setLenth:2 andWidth:4];
        NSLog(@"长方形的面积为%ld",[p area]);
    }
    return 0;
}
