//
//  Rectangle.m
//  Stretch Problem 8 - Custom Shape Classes
//
//  Created by Kaleo Kim on 5/8/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle

- (double)area {
    return self.length * self.width;
}

- (double)perimeter {
    return self.length + self.width + self.length + self.width;
}

- (BOOL)isSquare {
    if (self.length == self.width) {
        return YES;
    } else {
        return NO;
    }
}

@end
