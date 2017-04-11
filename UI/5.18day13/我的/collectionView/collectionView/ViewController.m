//
//  ViewController.m
//  collectionView
//
//  Created by mac on 16/5/19.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "ViewController.h"
#import "Group.h"
#import "Photo.h"
#import "CustomCell.h"
#import "CustomHeadView.h"

@interface ViewController ()<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

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
        NSInteger count;
        for (int i = 0; i < 4; i++) {
            Group *gro = [[Group alloc] init];
            gro.groupName = [NSString stringWithFormat:@"第%d组",i + 1];
            for (int j = 0; j < 10; j++) {
                Photo *pho = [[Photo alloc] init];
                pho.name = [NSString stringWithFormat:@"第%ld张图片",count + 1];
                pho.photoName = [NSString stringWithFormat:@"%ld.jpg",count + 1];
                [gro.photoMutArr addObject:pho];
                count++;
            }
            [_dataMutArr addObject:gro];
        }
    }
    return _dataMutArr;
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return self.dataMutArr.count;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    Group *gro = self.dataMutArr[section];
    return gro.photoMutArr.count;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    CustomCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CustomCell" forIndexPath:indexPath];
    Group *gro = self.dataMutArr[indexPath.section];
    Photo *pho = gro.photoMutArr[indexPath.row];
    cell.imgView.image = [UIImage imageNamed:pho.photoName];
    cell.nameLabel.text = pho.name;
    return cell;
}

-(UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath{
    if ([kind isEqualToString:UICollectionElementKindSectionHeader]) {
        CustomHeadView *headView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"head" forIndexPath:indexPath];
        Group *gro = self.dataMutArr[indexPath.section];
        [headView.groupNameBtn setTitle:gro.groupName forState:UIControlStateNormal];
        
        headView.groupNameBtn.tag = 100 + indexPath.section;
        headView.block = ^(NSInteger index){
            [_dataMutArr removeObjectAtIndex:index];
            [_collectionView reloadData];
        };
        
        return headView;
    }
    return nil;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
