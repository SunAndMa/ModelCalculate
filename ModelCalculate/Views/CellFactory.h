//
//  CellFactory.h
//  ModelCalculate
//
//  Created by Sun on 18/01/03.
//  Copyright (c) 2018年 Sun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PictureTableViewCell.h"
#import "NoPictureTableViewCell.h"
#import "BaseCell.h"
#import "AppModel.h"
#import "PictureModel.h"
#import "NoPictureModel.h"
#import "CellFactory.h"

@interface CellFactory : NSObject

+(id)cellFactoryWithModel:(AppModel *)am tableView:(UITableView *)tableView;
+(void)registerCellsWithtableView:(UITableView *) tableView;
@end
