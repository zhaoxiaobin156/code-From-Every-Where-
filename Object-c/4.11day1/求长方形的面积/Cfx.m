//
//  Cfx.m
//  oc第一个程序
//
//  Created by mac on 16/4/11.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "Cfx.h"

@implementation Cfx
-(void)setLenth:(NSInteger)a andWidth:(NSInteger)b{
    _lenth = a;
    _width = b;
}
-(NSInteger)a{
    return _lenth;
}
-(NSInteger)b{
    return _width;
}
-(NSInteger)area{
    return _lenth * _width;
}

@end
