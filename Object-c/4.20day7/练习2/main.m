//
//  main.m
//  练习2
//
//  Created by mac on 16/4/20.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Cat.h"
#import "Dog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        Person *per = [[Person alloc] init];
        per.name = @"你";
        Cat *cat = [[Cat alloc] init];
        cat.name = @"猫";
        Dog *dog = [[Dog alloc] init];
        dog.name = @"狗";
        [per hit:cat];
        [per hit:dog];
    }
    return 0;
}
