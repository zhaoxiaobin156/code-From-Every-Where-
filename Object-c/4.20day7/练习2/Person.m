//
//  Person.m
//  练习1
//
//  Created by mac on 16/4/20.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)hit:(Animal *)ani{
    NSLog(@"%@打了一下%@",self.name,ani.name);
    [ani action];
}
@end
