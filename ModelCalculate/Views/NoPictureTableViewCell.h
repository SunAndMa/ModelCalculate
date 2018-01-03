//
//  NoPictureTableViewCell.h
//  ModelCalculate
//
//  Created by Sun on 18/01/03.
//  Copyright (c) 2018年 Sun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NoPictureModel.h"
#import "BaseCell.h"

@interface NoPictureTableViewCell : BaseCell
@property (weak, nonatomic) IBOutlet UIImageView *iconImage;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *vipImage;
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;
+(id)NoPictureTableViewCellWithTableView:(UITableView *)tableView;

-(id)initWithtableView:(UITableView *)tableView;


@end
