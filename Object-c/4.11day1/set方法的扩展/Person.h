//
//  Person.h
//  oc第一个程序
//
//  Created by mac on 16/4/11.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject{
    char *_name;
    NSInteger _age;
}
-(void)setName:(char *)name andAge:(NSInteger)age;//带多参数的sett方法
-(char *)name;
-(NSInteger)age;
@end
