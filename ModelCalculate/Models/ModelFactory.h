//
//  ModelFactory.h
//  ModelCalculate
//
//  Created by Sun on 18/01/03.
//  Copyright (c) 2018年 Sun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NoPictureModel.h"
#import "PictureModel.h"

@interface ModelFactory : NSObject
+(id)modelFactoryWithDictionary:(NSDictionary *)dictionary;
-(id)initWithDictionary:(NSDictionary *)dictionary;
@end
