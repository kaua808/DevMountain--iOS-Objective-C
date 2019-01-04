//
//  Rectangle.h
//  Stretch Problem 8 - Custom Shape Classes
//
//  Created by Kaleo Kim on 5/8/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rectangle : NSObject

@property (assign, nonatomic) double length;
@property (assign, nonatomic) double width;

- (double)area;
- (double)perimeter;
- (BOOL)isSquare;
@end
