//
//  Person.h
//  1.NSDistionary的初认识
//
//  Created by mac on 16/4/18.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject{
    NSString *_name;
    NSInteger _age;
    NSString *_sex;
}
-(id)initWithName:(NSString *)name andAge:(NSInteger)age andSex:(NSString *)sex;
-(NSString *)name;
-(NSInteger)age;
@end
