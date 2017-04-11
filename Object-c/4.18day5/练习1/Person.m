//
//  Person.m
//  1.NSDistionary的初认识
//
//  Created by mac on 16/4/18.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "Person.h"

@implementation Person
-(id)initWithName:(NSString *)name andAge:(NSInteger)age andSex:(NSString *)sex{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        _sex = sex;
    }
    return self;
}
-(NSString *)name{
    return _name;
}
-(NSInteger)age{
    return _age;
}
- (NSString *)description
{
    return [NSString stringWithFormat:@"name = %@,age = %ld,sex = %@", _name,_age,_sex];
}
@end
