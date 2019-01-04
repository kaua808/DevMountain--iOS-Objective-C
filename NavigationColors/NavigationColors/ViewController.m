//
//  ViewController.m
//  NavigationColors
//
//  Created by Joshua Howland on 9/18/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIBarButtonItem *colorButton = [[UIBarButtonItem alloc] initWithTitle:@"color" style:UIBarButtonItemStylePlain target:self action:@selector(color:)];
    
    self.navigationItem.rightBarButtonItem = colorButton;
    
    
    
}

- (IBAction)color:(id)sender {
    if (self.view.backgroundColor == [UIColor blueColor]) {
        self.view.backgroundColor = [UIColor whiteColor];
    } else {
        self.view.backgroundColor = [UIColor blueColor];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
