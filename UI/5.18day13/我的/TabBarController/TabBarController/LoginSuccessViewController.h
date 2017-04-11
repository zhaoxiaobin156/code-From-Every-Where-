//
//  LoginSuccessViewController.h
//  TabBarController
//
//  Created by mac on 16/5/18.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginSuccessViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *userL;

@property (weak, nonatomic) IBOutlet UILabel *passL;

@property(nonatomic,copy)NSString *userName;

@property(nonatomic,copy)NSString *passWord;

@end
