//
//  IndexTableViewCell.m
//  MVVMDemo
//
//  Created by Joblee on 17/3/1.
//  Copyright © 2017年 Joblee. All rights reserved.
//

#import "IndexTableViewCell.h"

@implementation IndexTableViewCell

-(void)setValueWithModel:(IndexModel *)model
{
    _profileImg.image = [UIImage imageNamed:model.profile];
    _userNameLab.text = model.userName;
    _introduceLab.text = model.introduce;
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
