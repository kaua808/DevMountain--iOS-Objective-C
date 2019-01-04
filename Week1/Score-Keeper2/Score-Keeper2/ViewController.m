//
//  ViewController.m
//  Score-Keeper2
//
//  Created by Kaleo Kim on 5/1/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "ViewController.h"

static CGFloat margin = 20;
static CGFloat scoreViewHeight = 90;

@interface ViewController () <UITextFieldDelegate>

@property (strong, nonatomic) UIScrollView *scrollView;
@property (nonatomic, strong) NSMutableArray *scoreLabels;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height - 64)];

    
    self.title = @"Score Keeper";
    self.scoreLabels = [NSMutableArray new];
    for (NSInteger i =0; i < 4; i++) {
        [self addScoreView:i];
    }
    
    [self.view addSubview:self.scrollView];    
}

- (void)addScoreView:(NSInteger)index {
    
    
    CGFloat nameFieldWidth = 90;
    CGFloat scoreFieldWidth = 60;
    CGFloat stepperButtonWidth = 90;
    
    CGFloat width = self.view.frame.size.width;
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, index * scoreViewHeight, width, scoreViewHeight)];
    [self.scrollView addSubview:view];
    
    UITextField *name = [[UITextField alloc] initWithFrame:CGRectMake(margin, margin, nameFieldWidth, 44)];
    name.delegate = self;
    name.placeholder = @"Name";
    [view addSubview:name];
    
    UILabel *score = [[UILabel alloc] initWithFrame:CGRectMake(margin + nameFieldWidth, margin, scoreFieldWidth, 44)];
    [self.scoreLabels addObject:score];
    [view addSubview:score];
    
    UIStepper *stepper = [[UIStepper alloc] initWithFrame:CGRectMake(60 + nameFieldWidth + scoreFieldWidth, 30, stepperButtonWidth, 44)];
    stepper.tag = index;
    [view addSubview:stepper];
    
    [stepper addTarget:self action:@selector(scoreChanged:) forControlEvents:UIControlEventValueChanged];
    
    
}

- (void)scoreChanged:(id)sender {
    
    UIStepper *stepper = sender;
    
    NSInteger index = stepper.tag;
    
    double value = [stepper value];
    
    UILabel *score = self.scoreLabels[index];
    
    score.text = [NSString stringWithFormat:@"%d", (int)value];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
