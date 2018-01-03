//
//  ViewController.m
//  ModelCalculate
//
//  Created by 孙继桐 on 2018/1/3.
//  Copyright © 2018年 Sun. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>
{
    UITableView *_tableView;
    
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self initAll];
    [self createTableView];
}

-(NSMutableArray *)dataArray
{
    
    if(_dataArray == nil)
    {
        _dataArray = [[NSMutableArray alloc] init];
        NSString *path = [[NSBundle mainBundle] pathForResource:@"statuses.plist" ofType:nil];
        NSArray *array = [NSArray arrayWithContentsOfFile:path];
        NSLog(@"%@",array);
        for(NSDictionary *dict in array)
        {
            self.mf = [ModelFactory modelFactoryWithDictionary:dict];
            [_dataArray addObject:self.mf];
        }
    }
    return _dataArray;
}

-(void)initAll
{
    
}

-(void)createTableView
{
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    
    _tableView.dataSource = self;
    _tableView.delegate = self;
    [self.view addSubview:_tableView];
    [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
}

//代理方法, 由tableView调用, 想让界面返回数据行数
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArray.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    AppModel *am = _dataArray[indexPath.row];
    [CellFactory registerCellsWithtableView:tableView];
    BaseCell *cell = [CellFactory cellFactoryWithModel:am tableView:tableView];
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    AppModel *am = _dataArray[indexPath.row];
    return am.cellHeight;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
