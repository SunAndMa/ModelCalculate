//
//  CellFactory.m
//  ModelCalculate
//
//  Created by Sun on 18/01/03.
//  Copyright (c) 2018年 Sun. All rights reserved.
//

#import "CellFactory.h"


@implementation CellFactory

+(void)registerCellsWithtableView:(UITableView *) tableView
{
    [tableView registerNib:[UINib nibWithNibName:@"PictureTableViewCell" bundle:nil] forCellReuseIdentifier:@"Picture"];
    [tableView registerNib:[UINib nibWithNibName:@"NoPictureTableViewCell" bundle:nil] forCellReuseIdentifier:@"NoPicture"];
}

+(id)cellFactoryWithModel:(AppModel *)am tableView:(UITableView *)tableView
{
    BaseCell *cell;
    if([NSStringFromClass([am class]) isEqualToString:@"PictureModel"])
    {
        cell = [PictureTableViewCell PictureTableViewCellWithTableView:tableView];
    }
    else
    {
        cell = [NoPictureTableViewCell NoPictureTableViewCellWithTableView:tableView];
    }
    
    cell.am = am;
    
    return cell;
}

@end
