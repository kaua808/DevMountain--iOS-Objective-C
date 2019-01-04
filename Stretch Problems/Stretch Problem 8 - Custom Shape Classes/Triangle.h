//
//  Triangle.h
//  Stretch Problem 8 - Custom Shape Classes
//
//  Created by Kaleo Kim on 5/8/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Triangle : NSObject

@property (assign, nonatomic) double height;
@property (assign, nonatomic) double base;

- (double)area;
- (double)perimeter;
- (double)hypotenuse;

@end
