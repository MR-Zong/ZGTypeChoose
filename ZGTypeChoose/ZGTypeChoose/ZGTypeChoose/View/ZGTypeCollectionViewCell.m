//
//  ZGTypeCollectionViewCell.m
//  ZGTypeChoose
//
//  Created by Zong on 16/3/1.
//  Copyright © 2016年 Zong. All rights reserved.
//

#import "ZGTypeCollectionViewCell.h"

@implementation ZGTypeCollectionViewCell


- (instancetype)init
{
    if (self = [super init]) {
        
    }
    return self;
}
- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
        UILabel *titleLabel = [[UILabel alloc] init];
        self.titleLabel = titleLabel;
        [self.contentView addSubview:titleLabel];
        
        self.backgroundColor = [UIColor redColor];
    }
    return self;
}



@end
