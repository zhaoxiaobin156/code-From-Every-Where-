//
//  ViewController.m
//  tableView的使用
//
//  Created by mac on 16/5/18.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "ViewController.h"
#import "CustomCell.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,strong)NSMutableArray *dataMutArr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(NSMutableArray *)dataMutArr{
    if (_dataMutArr == nil) {
        _dataMutArr = [NSMutableArray array];
        for (int i = 0; i < 10; i++) {
            [_dataMutArr addObject:[NSString stringWithFormat:@"%d.jpg",i + 1]];
        }
    }
    return _dataMutArr;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.dataMutArr.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //StoryBoard拖的tableviewCell都不需要再注册，系统默认复用标识已经自动注册
    if (indexPath.row % 2 == 0) {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
        return cell;
    }
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CustomCell"];
    cell.imgView.image = [UIImage imageNamed:_dataMutArr[indexPath.row]];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
