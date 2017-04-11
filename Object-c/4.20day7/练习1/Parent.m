//
//  Parent.m
//  练习1
//
//  Created by mac on 16/4/20.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "Parent.h"

@implementation Parent
-(void)ask:(Parent *)par{
    NSLog(@"%@问%@：孩子是谁的？",self.name,par.name);
    [par say];
}
-(void)say{
    NSLog(@"%@说：我不知道",self.name);
}
@end
