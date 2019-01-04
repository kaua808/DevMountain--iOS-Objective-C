//
//  ViewController.m
//  demo table view selecting row
//
//  Created by Kaleo Kim on 4/30/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"

static NSString *cellIdentifier = @"cell";

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) NSArray *data;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Cities";
    
    self.data = @[@"Provo, UT", @"Orem, UT", @"Draper, UT", @"Cedar Hills, UT", @"Draper Utah", @"Salt Lake, UT"];

    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:tableView];
    
    

    tableView.dataSource = self;
    tableView.delegate = self;

}

//-(void)registerTableView:(UITableView *)tableView {
//        [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellIdentifier];
//}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self data].count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    // cell = [UITableViewCell alloc] initWithStyle:<#(UITableViewCellStyle)#> reuseIdentifier:<#(NSString *)#>
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    cell.textLabel.text = self.data[indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    NSString *cityName = self.data[indexPath.row];
    NSLog(@"%@", cityName);
    
    DetailViewController *cityViewController = [DetailViewController new];
    
    cityViewController.title = cityName;
    
    [self.navigationController pushViewController:cityViewController animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
