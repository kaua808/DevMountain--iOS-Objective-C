//
//  ViewController.m
//  Stretch Problem 10 - Return Random Color
//
//  Created by Kaleo Kim on 5/14/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "ViewController.h"
#import "UIColor+Mycolors.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)changeBackgroundColor:(id)sender {
    self.view.backgroundColor = [UIColor randomColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
