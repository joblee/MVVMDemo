//
//  IndexTableViewController.m
//  MVVMDemo
//
//  Created by Joblee on 17/3/1.
//  Copyright © 2017年 Joblee. All rights reserved.
//

#import "IndexTableViewController.h"
#import "IndexModel.h"
#import "IndexViewModel.h"
#import "IndexTableViewCell.h"

static NSString *cellId = @"reuseCellId";

@interface IndexTableViewController ()
@property (strong, nonatomic) NSArray *modelArray;
@end

@implementation IndexTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //获取数据
    IndexViewModel *indexViewModel = [[IndexViewModel alloc]init];
    [indexViewModel initModelWithReseultValueBlock:^(id modelResult){
    
        _modelArray = modelResult;
        [self.tableView reloadData];
    }];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _modelArray.count;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    IndexTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
    [cell setValueWithModel:_modelArray[indexPath.row]];
    return cell;
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
