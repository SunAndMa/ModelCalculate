//
//  ViewController.h
//  ModelCalculate
//
//  Created by 孙继桐 on 2018/1/3.
//  Copyright © 2018年 Sun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ModelFactory.h"
#import "CellFactory.h"
#import "AppModel.h"
#import "BaseCell.h"

@interface ViewController : UIViewController
@property (strong,nonatomic) NSMutableArray *dataArray;
@property (strong, nonatomic) ModelFactory *mf;
@property (strong, nonatomic) CellFactory *cf;
@end

