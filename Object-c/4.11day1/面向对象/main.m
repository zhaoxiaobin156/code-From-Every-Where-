//
//  main.m
//  面向对象
//
//  Created by mac on 16/4/11.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Stu:NSObject{
//@interface 接口,Stu 类名（第一个字母大写）,:代表继承,NSObject表示父类
    //声明属性变量：_变量名
    int _age;
    char *_name;
    char *_adr;
}
//-代表对象方法,+代表类方法,方法就是函数
-(void)setAge:(int)age;//sett设置成员属性值的方法
-(void)setName:(char *)name;
-(void)setAdr:(char *)adr;
-(int)age;//获取age的gett方法
-(char *)name;
-(char *)adr;
//第一个@end都是声明部分
@end

@implementation Stu

//方法实现
-(void)setName:(char *)name{
    _name = name;
}
-(void)setAdr:(char *)adr{
    _adr = adr;
}
-(void)setAge:(int)age{
    _age = age;
}
-(char *)name{
    return _name;
}
-(char *)adr{
    return _adr;
}
-(int)age{
    return _age;
}
//第二个@end实现
@end
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Stu *p = [Stu alloc];
        //Stu类,p就是对象,[]方法标识符,alloc相当于malloc 实例化对象
        [p setName:"wukong"];
        [p setAge:17];
        [p setAdr:"huaguoshan"];
        //p -> age = 17;根据封装性不能直接赋值
        NSLog(@"%d,%s,%s",[p age],[p name],[p adr]);
    }
    return 0;
}
