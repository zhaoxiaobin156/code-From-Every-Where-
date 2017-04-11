//
//  Person.m
//  oc第一个程序
//
//  Created by mac on 16/4/11.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)setName:(char *)name andAge:(NSInteger)age{
    _name = name;
    _age = age;
}
-(char *)name{
    return _name;
}
-(NSInteger)age{
    return _age;
}

@end
