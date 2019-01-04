//
//  ViewController.m
//  FramedArrangement
//
//  Created by Kaleo Kim on 4/26/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"I am loaded as the root ViewController");
    
    self.redView = [UIView new];
    self.redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.redView];
    
    self.greenView = [UIView new];
    self.greenView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:self.greenView];
    
    self.blueView = [UIView new];
    self.blueView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:self.blueView];
    
    
    self.yellowView = [UIView new];
    self.yellowView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:self.yellowView];
    
    [self layoutDiagonalSquares];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void) layoutSquares{
    CGFloat squareWidth = self.view.frame.size.width / 2;
    CGFloat squareHeight = self.view.frame.size.width / 2;
    
    CGFloat topRow = 25;
    CGFloat bottomRow = topRow + squareHeight;
    
    self.redView.frame = CGRectMake(0, topRow, squareWidth, squareHeight);
    self.greenView.frame = CGRectMake(squareWidth, topRow, squareWidth, squareHeight);
    self.blueView.frame = CGRectMake(0, bottomRow, squareWidth, squareHeight);
    self.yellowView.frame = CGRectMake(squareWidth, bottomRow, squareWidth, squareHeight);
}

-(void) layoutHorizontalRectangles{
    CGFloat squareWidth = self.view.frame.size.width;
    CGFloat squareHeight = self.view.frame.size.height /4;
    
    self.redView.frame = CGRectMake(0, 25, squareWidth, squareHeight);
    self.greenView.frame = CGRectMake(0, 25 + squareHeight, squareWidth, squareHeight);
    self.blueView.frame = CGRectMake(0, (squareHeight * 2) + 25, squareWidth, squareHeight);
    self.yellowView.frame = CGRectMake(0, (squareHeight * 3) + 25, squareWidth, squareHeight);
}

-(void) layoutVerticalRectangles{
    CGFloat squareWidth = self.view.frame.size.width / 4;
    CGFloat sqareHeight = self.view.frame.size.height;
    
    self.redView.frame = CGRectMake(0, 25, squareWidth, sqareHeight);
    self.greenView.frame = CGRectMake(squareWidth, 25, squareWidth, sqareHeight);
    self.blueView.frame = CGRectMake(squareWidth * 2, 25, squareWidth, sqareHeight);
    self.yellowView.frame = CGRectMake(squareWidth * 3, 25, squareWidth, sqareHeight);
}

-(void) layoutDiagonalSquares{
    CGFloat squareWidth = self.view.frame.size.width / 4;
    CGFloat squareHeight = self.view.frame.size.height / 4;
    
    self.redView.frame = CGRectMake(0, 25, squareWidth, squareHeight);
    self.greenView.frame = CGRectMake(squareWidth, squareHeight + 25, squareWidth, squareHeight);
    self.blueView.frame = CGRectMake(squareWidth * 2, (squareHeight * 2) + 25, squareWidth, squareHeight);
    self.yellowView.frame = CGRectMake(squareWidth * 3, (squareHeight * 3) + 25, squareWidth, squareHeight);
}


@end
