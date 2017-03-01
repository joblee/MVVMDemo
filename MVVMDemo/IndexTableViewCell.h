//
//  IndexTableViewCell.h
//  MVVMDemo
//
//  Created by Joblee on 17/3/1.
//  Copyright © 2017年 Joblee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IndexModel.h"
@interface IndexTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *profileImg;
@property (weak, nonatomic) IBOutlet UILabel *userNameLab;
@property (weak, nonatomic) IBOutlet UILabel *introduceLab;
- (void)setValueWithModel:(IndexModel*)model;
@end
