//
//  Triangle.m
//  Stretch Problem 8 - Custom Shape Classes
//
//  Created by Kaleo Kim on 5/8/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "Triangle.h"

@implementation Triangle

- (double)area {
    return self.base * self.height / 2;
}
- (double)perimeter {
//    double c = sqrt(self.base * self.base + self.height * self.height);
    
    return self.base + self.height + [self hypotenuse];
}

- (double)hypotenuse {
    return sqrt(self.base * self.base + self.height * self.height);
}

@end
