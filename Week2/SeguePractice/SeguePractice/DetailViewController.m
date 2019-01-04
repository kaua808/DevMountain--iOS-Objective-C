//
//  DetailViewController.m
//  SeguePractice
//
//  Created by Kaleo Kim on 5/4/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "DetailViewController.h"


@interface DetailViewController ()

@property (strong, nonatomic) IBOutlet UILabel *detailViewName;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    self.detailViewName.text = self.string;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
