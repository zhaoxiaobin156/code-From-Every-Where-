//
//  UIActionSheetVC.m
//  UI常用控件
//
//  Created by 刘桂林 on 16/5/9.
//  Copyright © 2016年 刘桂林. All rights reserved.
//

#import "UIActionSheetVC.h"

@interface UIActionSheetVC ()<UIActionSheetDelegate>

@end

@implementation UIActionSheetVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];

    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(sheetShow)];
    
    [self.view addGestureRecognizer:tap];
}

- (void)sheetShow
{
    //参数1:主标题(默认是灰色)
    //参数2:代理对象
    //参数3:取消按钮
    //参数4:副标题(默认是红色)
    //参数5:其他标题(默认是蓝色)
    UIActionSheet *sheet = [[UIActionSheet alloc] initWithTitle:@"中国" delegate:self cancelButtonTitle:@"取消" destructiveButtonTitle:@"北京" otherButtonTitles:@"上海",@"山东",@"杭州", nil];
    
    [sheet showInView:self.view];
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSLog(@"buttonIndex == %ld",buttonIndex);
    NSLog(@"title == %@",[actionSheet buttonTitleAtIndex:buttonIndex]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
