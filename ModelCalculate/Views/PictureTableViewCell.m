//
//  PictureTableViewCell.m
//  ModelCalculate
//
//  Created by Sun on 18/01/03.
//  Copyright (c) 2018年 Sun. All rights reserved.
//

#import "PictureTableViewCell.h"


@implementation PictureTableViewCell

- (void)awakeFromNib {
    // Initialization code
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setAm:(AppModel *)am
{
    _am = am;
    
    PictureModel *pm  = (PictureModel *)am;

    if([pm.vip isEqual:[NSNumber numberWithInt:1]])
    {
        _vipImage.image = [UIImage imageNamed:@"0"];
    }else{
        _vipImage.image = nil;
    }
    _nameLabel.text = pm.name;
    _iconImage.image = [UIImage imageNamed:pm.icon];
    _contentLabel.text = pm.text;
    _pictureImage.image = [UIImage imageNamed:pm.picture];
    _contentLabel.numberOfLines = 0;
    
    _vipImage.frame = pm.vipFrame;
    _iconImage.frame = pm.iconFrame;
    _nameLabel.frame = pm.nameFrame;
    _contentLabel.frame = pm.textFrame;
    _pictureImage.frame = pm.pictureFrame;
}




+(id)PictureTableViewCellWithTableView:(UITableView *)tableView
{
    return [[self alloc] initWithtableView:tableView];
}

-(id)initWithtableView:(UITableView *)tableView
{
    if(self = [super init])
    {
        self = [tableView dequeueReusableCellWithIdentifier:@"Picture"];
    }
    return self;
}

@end
