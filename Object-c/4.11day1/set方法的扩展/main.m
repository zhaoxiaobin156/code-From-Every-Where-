//
//  main.m
//  set方法的扩展
//
//  Created by mac on 16/4/11.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Person *p = [Person alloc];
        [p setName:"bajie" andAge:360];
        NSLog(@"%s,%ld",[p name],[p age]);
    }
    return 0;
}
