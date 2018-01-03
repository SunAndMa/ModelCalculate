//
//  ModelFactory.m
//  ModelCalculate
//
//  Created by Sun on 18/01/03.
//  Copyright (c) 2018年 Sun. All rights reserved.
//

#import "ModelFactory.h"


@implementation ModelFactory
+(id)modelFactoryWithDictionary:(NSDictionary *)dictionary
{
    return [[self alloc] initWithDictionary:dictionary];
}
-(id)initWithDictionary:(NSDictionary *)dictionary
{
 
    if(self = [super init])
    {
        if([dictionary valueForKey:@"picture"])
        {
            return [PictureModel pictureModelWithDictionart:dictionary];
        }
        else
        {
            return [NoPictureModel noPictureModelWithDictionart:dictionary];
        }
    }
    return  nil;
}
@end
