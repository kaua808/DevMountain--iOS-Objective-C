//
//  ViewController.h
//  FramedArrangement
//
//  Created by Kaleo Kim on 4/26/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property UIView *redView;
@property UIView *blueView;
@property UIView *greenView;
@property UIView *yellowView;

-(void) layoutSquares;
-(void) layoutHorizontalRectangles;
-(void) layoutVerticalRectangles;
-(void) layoutDiagonalSquares;

@end

