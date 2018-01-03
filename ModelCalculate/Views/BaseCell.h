//
//  BaseCell.h
//  ModelCalculate
//
//  Created by Sun on 18/01/03.
//  Copyright (c) 2018年 Sun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppModel.h"

@interface BaseCell : UITableViewCell
{
    AppModel *_am;
}

@property (strong, nonatomic) AppModel *am;

@end
