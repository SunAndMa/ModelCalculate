//
//  PictureModel.m
//  ModelCalculate
//
//  Created by Sun on 18/01/03.
//  Copyright (c) 2018年 Sun. All rights reserved.
//

#import "PictureModel.h"
#import "AppDelegate.h"


@implementation PictureModel

+(id)pictureModelWithDictionart:(NSDictionary *)dictionary
{
    return [[self alloc] initWithDictionary:dictionary];
}

-(id)initWithDictionary:(NSDictionary *)dictionary
{
    if(self = [super init])
    {
        [self setValuesForKeysWithDictionary:dictionary];
    }
    

    self.iconFrame = CGRectMake(13, 12, 51, 48);
    self.nameFrame = CGRectMake(72, 19, 62, 20);
    self.vipFrame = CGRectMake(142, 12, 18, 18);
    self.textFrame = CGRectMake(13, 71, 354, 30);
    self.pictureFrame = CGRectMake(13, 109, 126, 94);
    
    [self calculateHeight];
    
    return self;
}

-(void)calculateHeight
{
  
    CGFloat screenWith = [UIScreen mainScreen].bounds.size.width;
    CGFloat X = 8;
    
    
    CGSize size = CGSizeMake(CGFLOAT_MAX, 12);
    NSDictionary * attributes = @{NSFontAttributeName:[UIFont systemFontOfSize:17]};
    size = [self.name boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin attributes:attributes context:nil].size;
    
    CGFloat titleW = size.width;
    self.vipFrame = CGRectMake(titleW + 20 + self.nameFrame.size.width, 12, self.vipFrame.size.width, self.vipFrame.size.height);
    
    //修改titleView的frame
    CGRect frame = self.nameFrame;
    frame.size.width = titleW;
    self.nameFrame = frame;
    
    //修改vip的frame
    frame = self.vipFrame;
    frame.origin.x = CGRectGetMaxX(self.vipFrame) + 20;
    self.vipFrame = frame;
    
    
    //修改content的frame
    size = CGSizeMake(screenWith - 2*X, CGFLOAT_MAX);
    attributes = @{NSFontAttributeName:[UIFont systemFontOfSize:17]};
    size = [self.text boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin attributes:attributes context:nil].size;
    CGFloat contentH = size.height;
    frame = self.textFrame;
    frame.size.height = contentH;
    frame.size.width = screenWith - 2 * X;
    self.textFrame = frame;
    
    
    //修改picture的frame
    frame = self.pictureFrame;
    frame.origin.y = CGRectGetMaxY(self.textFrame) + 20;
    self.pictureFrame = frame;
    
    self.cellHeight = CGRectGetMaxY(self.pictureFrame) + 20;
}
@end
