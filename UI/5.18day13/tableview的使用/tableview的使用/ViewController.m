//
//  ViewController.m
//  tableview的使用
//
//  Created by 刘桂林 on 16/5/18.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController.h"
#import "CustomCell.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong) NSMutableArray *dataArrM;

@end

@implementation ViewController

- (NSMutableArray *)dataArrM
{
    if (_dataArrM == nil) {
        
        _dataArrM = [NSMutableArray array];
        
        for(int i = 0; i < 10; i++)
        {
            [_dataArrM addObject:[NSString stringWithFormat:@"%d.jpg",i]];
        }
    }
    return _dataArrM;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArrM.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //StoryBoard拖的tableviewCell都不需要再注册，系统默认复用标识已经自动注册
    if (indexPath.row %2 == 0) {
        
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
        
        return cell;
    }
    else
    {
        CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CustomCell"];
        
        cell.imgView.image = [UIImage imageNamed:_dataArrM[indexPath.row]];
        
        return cell;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
