//
//  ViewController.m
//  UIControls
//
//  Created by Kaleo Kim on 4/28/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(20, 20, 100, 100);
    button.backgroundColor = [UIColor redColor];

    [button setTitle:@"Tap Me" forState:UIControlStateNormal];
    [button setTitle:@"Tapped" forState:UIControlStateHighlighted];
    
    
    
    [button addTarget:self action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    
    
    UIButton *infoButton = [UIButton buttonWithType:UIButtonTypeInfoDark];
    CGRect infoButtonFrame = infoButton.frame;
    
    infoButtonFrame.origin = CGPointMake(200, 200);
    infoButton.frame = infoButtonFrame;
    
    [self.view addSubview:button];
    [self.view addSubview:infoButton];
    
    NSArray *names = @[@"First",@"Second", @"Third"];
    
    UISegmentedControl *segmentedControl = [[UISegmentedControl alloc] initWithItems:names];
    
    CGRect segmentedControlFrame = segmentedControl.frame;
    segmentedControlFrame.origin = CGPointMake(10, 200);
    segmentedControl.frame = segmentedControlFrame;
    
    [segmentedControl addTarget:self action:@selector(segmentedControlChange:) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:segmentedControl];
}

- (void)segmentedControlChange:(UISegmentedControl *)sender {
    NSLog(@"%li", sender.selectedSegmentIndex);
}

- (void)buttonTapped:(id)sender {
    self.view.backgroundColor = [UIColor greenColor];
}
@end
