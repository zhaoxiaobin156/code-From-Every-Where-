//
//  CustomHeadView.m
//  collectionView
//
//  Created by mac on 16/5/19.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "CustomHeadView.h"

@implementation CustomHeadView

- (IBAction)deleteAction:(UIButton *)sender {
    self.block(sender.tag - 100);
}

@end
