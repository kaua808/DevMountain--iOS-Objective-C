//
//  ViewController.m
//  challenge animation - move square along borders of screen
//
//  Created by Kaleo Kim on 6/2/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@property (strong, nonatomic) UIView *square;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    UIView *square = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 120, 120)];
    square.backgroundColor = [UIColor blackColor];
    [self.view addSubview:square];
    self.square = square;
    
        CABasicAnimation *animation = [CABasicAnimation animation];
        animation.keyPath = @"position.x";
        animation.fromValue = @(self.square.center.x);
        animation.toValue = @(self.view.frame.size.width - 120);
        animation.duration = 3;
    
        [self.square.layer addAnimation:animation forKey:@"basic"];
    
    
        self.square.layer.position = CGPointMake(self.square.layer.position.x,self.view.frame.size.width - 120);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
