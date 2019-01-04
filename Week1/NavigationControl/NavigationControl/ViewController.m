//
//  ViewController.m
//  NavigationControl
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

    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 44)];
    
    button.backgroundColor = [UIColor yellowColor];
    self.title = @"First";
    
    [button addTarget:self action:@selector(pushNewViewController:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
    
    UIStepper *stepper = [[UIStepper alloc] initWithFrame:CGRectMake(200, 200, 100, 100)];
    [self.view addSubview:stepper];
    
    [stepper addTarget:self action:@selector(stepperChanged:) forControlEvents:UIControlEventValueChanged];
    
    stepper.stepValue = 10;
    
    
}

- (void)stepperChanged:(UIStepper *)stepper {
    NSLog(@"%@", @(stepper.value));
}

- (void)pushNewViewController:(id)sender {
    UIViewController *secondViewController = [[UIViewController alloc] init];
    secondViewController.view.backgroundColor = [UIColor redColor];
    secondViewController.title = @"second";
    
    UIBarButtonItem *button = [[UIBarButtonItem alloc] initWithTitle:@"Another!" style:UIBarButtonItemStyleDone target:self action:@selector(pushNewViewController:)];
    
    secondViewController.navigationItem.rightBarButtonItem = button;
    
    [self.navigationController pushViewController:secondViewController animated:YES];
}

@end
