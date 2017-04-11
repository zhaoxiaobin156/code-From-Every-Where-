//
//  main.m
//  练习1
//
//  Created by mac on 16/4/20.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Parent.h"
#import "Son.h"
#import "SonWife.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        Parent *fa = [[Parent alloc] init];
        Son *son = [[Son alloc] init];
        SonWife *sonw = [[SonWife alloc] init];
        fa.name = @"谢贤";
        son.name = @"谢霆锋";
        sonw.name = @"张柏芝";
        [fa ask:sonw];
        [fa ask:son];
    }
    return 0;
}
