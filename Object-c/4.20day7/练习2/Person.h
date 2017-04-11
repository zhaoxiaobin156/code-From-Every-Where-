//
//  Person.h
//  练习1
//
//  Created by mac on 16/4/20.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Animal.h"

@interface Person : NSObject
@property(nonatomic,copy)NSString *name;
-(void)hit:(Animal *)ani;
@end
