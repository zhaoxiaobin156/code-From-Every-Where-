//
//  Stu.m
//  oc第一个程序
//
//  Created by mac on 16/4/11.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "Stu.h"

@implementation Stu
-(void)setName:(char *)name{
    _name = name;
}
-(void)setAdr:(char *)adr{
    _adr = adr;
}
-(void)setAge:(NSInteger)age{
    _age = age;
}
-(char *)name{
    return _name;
}
-(char *)adr{
    return _adr;
}
-(NSInteger)age{
    return _age;
}

@end
