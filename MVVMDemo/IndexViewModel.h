//
//  IndexViewModel.h
//  MVVMDemo
//
//  Created by Joblee on 17/3/1.
//  Copyright © 2017年 Joblee. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void (^ReseultValueBlock) (id returnValue);
@interface IndexViewModel : NSObject
@property (nonatomic,copy) ReseultValueBlock resultBlock;
- (void)initModelWithReseultValueBlock:(ReseultValueBlock)resultBlock;
@end
