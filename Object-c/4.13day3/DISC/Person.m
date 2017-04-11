//
//  Person.m
//  字符串
//
//  Created by mac on 16/4/13.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "Person.h"

@implementation Person
-(id)initWithName:(NSString *)name angAge:(NSInteger)age{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
    }
    return self;
}
-(NSInteger)age{
    return _age;
}
-(NSString *)name{
    return _name;
}
-(NSString *)description{
    NSString *str = [[NSString alloc] initWithFormat:@"%@,%ld",_name,_age];
    return str;
}
@end
