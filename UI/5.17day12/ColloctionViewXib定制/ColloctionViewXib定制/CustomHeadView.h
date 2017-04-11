//
//  CustomHeadView.h
//  ColloctionViewXib定制
//
//  Created by 刘桂林 on 16/5/17.
//  Copyright (c) 2016年 刘桂林. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PassButtonTag <NSObject>

- (void)passButtonTag:(NSInteger )index;

@end

@interface CustomHeadView : UICollectionReusableView

@property (weak, nonatomic) IBOutlet UIButton *titleButton;

//@property (nonatomic,copy) void(^block)(NSInteger index);

@property (nonatomic,weak) id <PassButtonTag> delegate;

@end
