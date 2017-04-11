//
//  Stu.h
//  oc第一个程序
//
//  Created by mac on 16/4/11.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Stu : NSObject{
    NSInteger _age;
    char *_name;
    char *_adr;
}
//sett设置成员属性的值
-(void)setName:(char *)name;
-(void)setAge:(NSInteger)age;
-(void)setAdr:(char *)adr;
//gett获取成员属性的值
-(char *)name;
-(char *)adr;
-(NSInteger)age;
@end
