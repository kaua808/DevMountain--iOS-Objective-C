//
//  SKViewController.m
//  Score Keeper
//
//  Created by Kaleo Kim on 4/28/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "SKViewController.h"

static CGFloat margin = 20;
static CGFloat scoreViewHeight = 90;




@interface SKViewController () <UITextFieldDelegate>

@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) NSMutableArray *scoreLabels;

@end

@implementation SKViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Score Keeper";
    
    self.scoreLabels = [NSMutableArray new];
    
    NSLog(@"%f %f", self.view.frame.size.height, self.view.frame.size.width);
    
    
    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height - 64)];
    
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
    score.textAlignment = NSTextAlignmentCenter;
    [self.scoreLabels addObject:score];
    [view addSubview:score];
    
    UIStepper *scoreStepper = [[UIStepper alloc] initWithFrame:CGRectMake(60 + nameFieldWidth + scoreFieldWidth, 30, stepperButtonWidth, 44)];
    scoreStepper.maximumValue = 10;
    scoreStepper.minimumValue = -10;
    scoreStepper.tag = index;
    [view addSubview:scoreStepper];
    
    
    [scoreStepper addTarget:self action:@selector(scoreChanged:) forControlEvents:UIControlEventValueChanged];

}

- (void)scoreChanged:(id)sender {
    UIStepper *stepper = sender;
    
    NSInteger index = stepper.tag;
    
    double value = [stepper value];
    
    UILabel *score = self.scoreLabels[index];

    score.text = [NSString stringWithFormat:@"%d", (int)value];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return true;
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
