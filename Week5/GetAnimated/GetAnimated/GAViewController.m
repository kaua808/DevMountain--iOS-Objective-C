//
//  GAViewController.m
//  GetAnimated
//
//  Created by Joshua Howland on 6/13/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "GAViewController.h"

@interface GAViewController ()

@property (nonatomic, strong) UIView *square;
@property (nonatomic, strong) UIView *smallSquare;

@end

@implementation GAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIView *square = [[UIView alloc] initWithFrame:CGRectMake(60, 60, 200, 200)];
    square.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:square];
    self.square = square;
    
    UIView *smallSquare = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 120, 120)];
    smallSquare.backgroundColor = [UIColor blackColor];
    [self.view addSubview:smallSquare];
    self.smallSquare = smallSquare;
    
    //basic animation
    
//    CGAffineTransform scaleTransform = CGAffineTransformMakeScale(2.0, 2.0);
//    CGAffineTransform rotateTransform = CGAffineTransformMakeRotation(90 * M_PI / 180);
//    
//    [UIView animateWithDuration:3.0 animations:^{
//        self.square.alpha = 0.0;
//        self.square.center = CGPointMake(self.square.center.x, self.square.center.y + 300);
//        self.square.transform = CGAffineTransformConcat(scaleTransform, rotateTransform);
//        
//        self.smallSquare.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(0.5, 0.5), CGAffineTransformMakeRotation(90 * M_PI / 180));
//        self.smallSquare.center = CGPointMake(self.smallSquare.center.x, self.smallSquare.center.y - 40);
//        self.smallSquare.alpha = 0.0;
//        
//    }];
 
    //CORE ANIMATION
    //move animation
    
//    CABasicAnimation *animation = [CABasicAnimation animation];
//    animation.keyPath = @"position.y";
//    animation.fromValue = @(self.square.center.y);
//    animation.toValue = @(self.square.center.y + 300);
//    animation.duration = 3;
//    
//    [self.square.layer addAnimation:animation forKey:@"basic"];
//    
//    
//    self.square.layer.position = CGPointMake(self.square.layer.position.x, self.square.layer.position.y + 300);
    
    //shake animation
    
//    CAKeyframeAnimation *keyFrameAnimation = [CAKeyframeAnimation animation];
//    keyFrameAnimation.keyPath = @"position.x";
//    keyFrameAnimation.values = @[@0, @10, @-10,@10, @0];
//    keyFrameAnimation.keyTimes = @[@0, @(1/6.0), @(3/6.0),@(5/6.0), @1];
//    keyFrameAnimation.duration = 1;
//    
//    keyFrameAnimation.additive = YES;
//    
//    [self.square.layer addAnimation:keyFrameAnimation forKey:@"shake"];
//    [self.smallSquare.layer addAnimation:keyFrameAnimation forKey:@"shake"];
    
    //path animation
    
//    CGRect boundingRect = CGRectMake(-150, -150, 300, 300);
//    
//    CAKeyframeAnimation *orbit = [CAKeyframeAnimation animation];
//    orbit.keyPath = @"position";
//    orbit.path = CFAutorelease(CGPathCreateWithEllipseInRect(boundingRect, NULL));
//    orbit.duration = 4;
//    orbit.additive = YES;
//    orbit.repeatCount = HUGE_VALF;
//    orbit.calculationMode = kCAAnimationPaced;
//    orbit.rotationMode = kCAAnimationRotateAuto;
//    
//    [self.smallSquare.layer addAnimation:orbit forKey:@"orbit"];
    
    
    //move animaion (with timing)
    
//    CABasicAnimation *animation = [CABasicAnimation animation];
//    animation.keyPath = @"position.y";
//    animation.fromValue = @(self.square.center.y);
//    animation.toValue = @(self.square.center.y + 175);
//    animation.duration = 3;
//    
//    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
//    [self.square.layer addAnimation:animation forKey:@"basic"];
//    self.square.layer.position = CGPointMake(self.square.layer.position.x, self.square.layer.position.y + 175);
    
    
    //challenge
    
    CGRect boundingRect = CGRectMake(0, 0, self.view.bounds.size.width - smallSquare.frame.size.width, self.view.bounds.size.height - smallSquare.frame.size.height);
    
    CAKeyframeAnimation *orbit = [CAKeyframeAnimation animation];
    orbit.keyPath = @"position";
    orbit.path = CFAutorelease(CGPathCreateWithRect(boundingRect, NULL));
    orbit.duration = 4;
    orbit.additive = YES;
    orbit.repeatCount = HUGE_VALF;
    orbit.calculationMode = kCAAnimationPaced;
    orbit.rotationMode = kCAAnimationRotateAuto;
    
    [self.smallSquare.layer addAnimation:orbit forKey:@"orbit"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
