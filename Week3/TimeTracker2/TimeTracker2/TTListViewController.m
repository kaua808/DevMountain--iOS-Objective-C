//
//  ViewController.m
//  TimeTracker2
//
//  Created by Kaleo Kim on 5/14/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "TTListViewController.h"
#import "TTLIstTableViewDataSource.h"

@interface TTListViewController ()

@property (strong, nonatomic) TTListViewController *datasource;

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation TTListViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.datasource = [TTListViewController new];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.tableView.dataSource = self.datasource;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
