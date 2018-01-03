//
//  AppModel.h
//  ModelCalculate
//
//  Created by Sun on 18/01/03.
//  Copyright (c) 2018年 Sun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface AppModel : NSObject

@property (copy, nonatomic) NSString *text;
@property (copy, nonatomic) NSString *icon;
@property (copy, nonatomic) NSString *name;
@property (copy, nonatomic) NSString *vip;

@property (assign, nonatomic) CGRect textFrame;
@property (assign, nonatomic) CGRect iconFrame;
@property (assign, nonatomic) CGRect nameFrame;
@property (assign, nonatomic) CGRect vipFrame;

@property (assign, nonatomic) CGFloat cellHeight;

+(id)appmodelWithDictionart:(NSDictionary *)dictionary;
-(id)initWithDictionary:(NSDictionary *)dictionary;
@end

