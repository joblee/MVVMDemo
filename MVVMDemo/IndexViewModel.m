//
//  IndexViewModel.m
//  MVVMDemo
//
//  Created by Joblee on 17/3/1.
//  Copyright © 2017年 Joblee. All rights reserved.
//

#import "IndexViewModel.h"
#import "IndexModel.h"
@implementation IndexViewModel
- (void)initModelWithReseultValueBlock:(ReseultValueBlock)resultBlock
{
    _resultBlock = resultBlock;
    int num = 10;
    NSMutableArray *modelArr = [[NSMutableArray alloc]initWithCapacity:num];
    for (int i=0; i<num; i++) {
        IndexModel *indexModel = [[IndexModel alloc]init];
        indexModel.profile = [NSString stringWithFormat:@"profile%d",i];
        indexModel.userName = [NSString stringWithFormat:@"lily%d",i];
        indexModel.introduce = [NSString stringWithFormat:@"I am from shenzhen"];
        [modelArr addObject:indexModel];
    }
    
    _resultBlock(modelArr);
}
@end
