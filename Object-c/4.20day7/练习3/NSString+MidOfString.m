//
//  NSString+MidOfString.m
//  练习1
//
//  Created by mac on 16/4/20.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "NSString+MidOfString.h"

@implementation NSString (MidOfString)
-(unichar)midOfString{
    NSInteger len = self.length;
    if (len % 2 == 1) {
        return [self characterAtIndex:len / 2];
    }else{
        return [self characterAtIndex:len / 2 - 1];
    }
}
@end
