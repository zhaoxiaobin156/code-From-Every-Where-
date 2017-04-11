//
//  ViewController.m
//  手写cell注册
//
//  Created by 刘桂林 on 16/5/16.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController.h"
#import "CustomCell.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *myTableView;

@property (nonatomic,strong) NSMutableArray *dataArrM;

@end

@implementation ViewController

- (NSMutableArray *)dataArrM
{
    if (_dataArrM == nil) {
        
        _dataArrM = [NSMutableArray array];
        
        for(int i = 0; i < 10; i++)
        {
            [_dataArrM addObject:[NSString stringWithFormat:@"好友%d",i]];
        }
    }
    return _dataArrM;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //手动注册cell
    [self.myTableView registerClass:[CustomCell class] forCellReuseIdentifier:@"cell"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArrM.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
//    static NSString *signCell = @"cell";
    
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
//    if (cell == nil) {
//        cell = [[CustomCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:signCell ];
//    }
    
    cell.nameLabel.text = self.dataArrM[indexPath.row];
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
