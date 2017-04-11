//
//  main.m
//  练习3
//
//  Created by mac on 16/4/20.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+MidOfString.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        NSString *str = @"12345";
        char ch = [str midOfString];
        NSLog(@"%c",ch);
    }
    return 0;
}
