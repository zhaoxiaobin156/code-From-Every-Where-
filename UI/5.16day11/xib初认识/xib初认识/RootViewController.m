//
//  RootViewController.m
//  xib初认识
//
//  Created by 刘桂林 on 16/5/16.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "RootViewController.h"
#import "LabelViewController.h"
#import "ButtonViewController.h"
#import "ImgaeViewController.h"
#import "ScrollViewController.h"
#import "TextFieldViewController.h"
#import "OtherViewController.h"

@interface RootViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *myTableView;

@property (nonatomic,strong) NSArray *dataArr;

@end

@implementation RootViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        NSLog(@"xib加载构造方法");
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self loadData];
    
}

- (void)loadData
{
    _dataArr = @[@"UILabel",@"UIbutton",@"UIImageView",@"UITextField",@"UIScrollView",@"Other"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _dataArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    
    cell.textLabel.text = _dataArr[indexPath.row];
    
    cell.contentView.backgroundColor = [UIColor orangeColor];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIViewController *controller;
    
    switch (indexPath.row) {
        case 0:
        {
            UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:[[LabelViewController alloc] initWithNibName:@"LabelViewController" bundle:nil]];
            
            [self presentViewController:nav animated:YES completion:nil];
        }
            break;
        case 1:
        {
            controller = [[ButtonViewController alloc] initWithNibName:@"ButtonViewController" bundle:nil];
            
            [self presentViewController:controller animated:YES completion:nil];
        }
            break;
        case 2:
        {
            controller = [[ImgaeViewController alloc] initWithNibName:@"ImgaeViewController" bundle:nil];
            
            [self presentViewController:controller animated:YES completion:nil];
        }
            break;
        case 3:
        {
            controller = [[TextFieldViewController alloc] initWithNibName:@"TextFieldViewController" bundle:nil];
            
            [self presentViewController:controller animated:YES completion:nil];
        }
            break;
        case 4:
        {
            controller = [[ScrollViewController alloc] initWithNibName:@"ScrollViewController" bundle:nil];
            
            [self presentViewController:controller animated:YES completion:nil];
        }
            break;
            case 5:
        {
            controller = [[OtherViewController alloc] initWithNibName:@"OtherViewController" bundle:nil];
            
            [self presentViewController:controller animated:YES completion:nil];
        }
            break;
        default:
            break;
    }
    
    
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
