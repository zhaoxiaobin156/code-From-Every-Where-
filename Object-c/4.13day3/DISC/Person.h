//
//  Person.h
//  字符串
//
//  Created by mac on 16/4/13.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject{
    NSString *_name;
    NSInteger _age;
}
-(id)initWithName:(NSString *)name angAge:(NSInteger)age;
-(NSInteger)age;
-(NSString *)name;
@end
