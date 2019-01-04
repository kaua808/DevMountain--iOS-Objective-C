//
//  UIColor+Mycolors.m
//  Stretch Problem 10 - Return Random Color
//
//  Created by Kaleo Kim on 5/14/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "UIColor+Mycolors.h"

@implementation UIColor (Mycolors)

+ (UIColor *)randomColor {
    float red = arc4random_uniform(256) / 255.0;
    float green = arc4random_uniform(256) / 255.0;
    float blue = arc4random_uniform(256) / 255.0;
    
    return [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
}

@end
