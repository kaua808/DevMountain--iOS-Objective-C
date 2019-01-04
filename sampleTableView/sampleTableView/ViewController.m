//
//  ViewController.m
//  sampleTableView
//
//  Created by Kaleo Kim on 4/29/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "ViewController.h"

static NSString * const cellIdentifier = @"indentifier";

@interface ViewController ()

@property (strong, nonatomic) UITableView *tableView;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"internal View";
    
//    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
//
//    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
//    [self.view addSubview:self.tableView];
    
    self.tableView = [UITableView new];
    self.tableView.dataSource = self;
    self.tableView.frame = self.view.bounds;
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    
    [self.view addSubview:self.tableView];


    
    
}

-(void)registerTableView:(UITableView *)tableView {
    [tableView registerClass:[UITableView class] forCellReuseIdentifier:cellIdentifier];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self stuff].count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    cell.textLabel.text = [self stuff][indexPath.row];
    
    return cell;
    
}



- (NSArray *)stuff {
    return @[@"hi", @"Hello"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
