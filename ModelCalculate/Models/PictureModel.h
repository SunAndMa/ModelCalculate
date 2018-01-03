//
//  PictureModel.h
//  ModelCalculate
//
//  Created by Sun on 18/01/03.
//  Copyright (c) 2018年 Sun. All rights reserved.
//

#import "AppModel.h"

@interface PictureModel : AppModel

@property (copy, nonatomic) NSString *picture;
@property (assign, nonatomic) CGRect pictureFrame;

+(id)pictureModelWithDictionart:(NSDictionary *)dictionary;
-(id)initWithDictionary:(NSDictionary *)dictionary;

@end
