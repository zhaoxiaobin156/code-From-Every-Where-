//
//  ViewController.m
//  1
//
//  Created by mac on 16/5/19.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "ViewController.h"
#import "Group.h"
#import "Photo.h"
#import "CustomTVCell.h"
#import "CustomTVHeadView.h"
#import "CustomCVCell.h"
#import "CustomCVHeadView.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property(nonatomic,strong)NSMutableArray *dataTVMutArr;

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@property(nonatomic,strong)NSMutableArray *dataCVMutArr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [_tableView registerNib:[UINib nibWithNibName:@"CustomTVHeadView" bundle:nil] forHeaderFooterViewReuseIdentifier:@"TVHead"];
}

-(NSMutableArray *)dataTVMutArr{
    
  
    if (_dataTVMutArr == nil) {
        _dataTVMutArr = [NSMutableArray array];
        NSInteger count = 1;
        for (int i = 0; i < 4; i++) {
            Group *gro = [[Group alloc] init];
            gro.groupName = [NSString stringWithFormat:@"第%d组",i + 1];
            for (int j = 0; j < 5; j++) {
                Photo *pho = [[Photo alloc] init];
                pho.name = [NSString stringWithFormat:@"第%ld张图片",count];
                pho.photoName = [NSString stringWithFormat:@"%ld.jpg",count];
                [gro.photoMutArr addObject:pho];
                count++;
            }
            [_dataTVMutArr addObject:gro];
        }
    }
    return _dataTVMutArr;
}

-(NSMutableArray *)dataCVMutArr{
    if (_dataCVMutArr == nil) {
        _dataCVMutArr = [NSMutableArray array];
        NSInteger count = 1;
        for (int i = 0; i < 4; i++) {
            Group *gro = [[Group alloc] init];
            gro.groupName = [NSString stringWithFormat:@"第%d组",i + 1];
            for (int j = 0; j < 10; j++) {
                Photo *pho = [[Photo alloc] init];
                pho.name = [NSString stringWithFormat:@"第%ld张图片",count];
                pho.photoName = [NSString stringWithFormat:@"%ld.jpg",count];
                [gro.photoMutArr addObject:pho];
                count++;
            }
            [_dataCVMutArr addObject:gro];
        }
    }
    return _dataCVMutArr;
}

#pragma mark --- UITableViewDelegate

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.dataTVMutArr.count;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    Group *gro = self.dataTVMutArr[section];
    return gro.photoMutArr.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CustomTVCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CustomTVCell" forIndexPath:indexPath];
    Group *gro = self.dataTVMutArr[indexPath.section];
    Photo *pho = gro.photoMutArr[indexPath.row];
    cell.imgView.image = [UIImage imageNamed:pho.photoName];
    cell.nameLabel.text = pho.name;
    return cell;
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    CustomTVHeadView *headView = [tableView dequeueReusableHeaderFooterViewWithIdentifier:@"TVHead"];
    Group *gro = self.dataTVMutArr[section];
    [headView.groupNameBtn setTitle:gro.groupName forState:UIControlStateNormal];
    return headView;
}

#pragma mark --- UICollectionViewDelegate

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return self.dataCVMutArr.count;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    Group *gro = self.dataCVMutArr[section];
    return gro.photoMutArr.count;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    CustomCVCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CustomCVCell" forIndexPath:indexPath];
    Group *gro = self.dataCVMutArr[indexPath.section];
    Photo *pho = gro.photoMutArr[indexPath.row];
    cell.imgView.image = [UIImage imageNamed:pho.photoName];
    cell.nameLabel.text = pho.name;
    return cell;
}

-(UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath{
    if ([kind isEqualToString:UICollectionElementKindSectionHeader]) {
        CustomCVHeadView *headView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"CVHead" forIndexPath:indexPath];
        Group *gro = self.dataCVMutArr[indexPath.section];
        [headView.groupNameBtn setTitle:gro.groupName forState:UIControlStateNormal];
        return headView;
    }
    return nil;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
