//
//  LoginSuccessViewController.h
//  TabBarController
//
//  Created by 刘桂林 on 16/5/18.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginSuccessViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *userL;

@property (weak, nonatomic) IBOutlet UILabel *passL;

@property (nonatomic,copy) NSString *userName;

@property (nonatomic,copy) NSString *passWord;

@end
