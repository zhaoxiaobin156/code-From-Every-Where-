//
//  ViewController.m
//  xib定制cell
//
//  Created by 刘桂林 on 16/5/16.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "CustomCell.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong) NSMutableArray *dataArrM;

@property (weak, nonatomic) IBOutlet UITableView *myTableView;

@end

@implementation ViewController

- (NSMutableArray *)dataArrM
{
    if (_dataArrM == nil) {
        
        _dataArrM = [NSMutableArray array];
        
        NSArray *arr = @[@"小炮",@"虚空行者",@"狗头",@"风女",@"娘炮",@"阿木木",@"王子阿木木",@"猴子",@"安妮",@"皮城女警",@"艾希",@"LOL"];
        
        for(int i = 0; i < 12; i++)
        {
            Person *p1 = [[Person alloc] init];
            
            p1.name = arr[i];
            
            p1.icon = [NSString stringWithFormat:@"21_%d.jpg",i+1];
            
            p1.price = [NSString stringWithFormat:@"价格：%d",arc4random() % 6300];
            
            [_dataArrM addObject:p1];
        }
    }
    return _dataArrM;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //注册xib cell
    [self.myTableView registerNib:[UINib nibWithNibName:@"CustomCell" bundle:nil] forCellReuseIdentifier:@"cell"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArrM.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    Person *person = self.dataArrM[indexPath.row];
    
    cell.p1 = person;
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
