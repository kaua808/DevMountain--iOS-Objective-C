//
//  ViewController.m
//  viewPlay
//
//  Created by Kaleo Kim on 4/27/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    CGFloat squareSize;
    
    squareSize = CGRectGetWidth(self.view.frame) / 2.0;
    
    UIView *view1 = [UIView new];
    view1.frame = CGRectMake(0, 0, squareSize, squareSize);
    view1.backgroundColor = [UIColor redColor];
    [self.view addSubview:view1];
    
    UIView *view2 = [UIView new];
    view2.frame = CGRectMake(squareSize, 0, squareSize, squareSize);
    view2.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:view2];
    
    UIView *view3 = [UIView new];
    view3.frame = CGRectMake(0, squareSize, squareSize, squareSize);
    view3.backgroundColor = [UIColor greenColor];
    [self.view addSubview:view3];
    
    UIView *view4 = [UIView new];
    view4.frame = CGRectMake(squareSize, squareSize, squareSize, squareSize);
    view4.backgroundColor = [UIColor blueColor];
    [self.view addSubview:view4];
    

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
