//
//  Circle.h
//  Stretch Problem 8 - Custom Shape Classes
//
//  Created by Kaleo Kim on 5/8/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Circle : NSObject

@property (assign, nonatomic) double radius;

- (double)area;
- (double)perimeter;
- (double)diameter;
@end
