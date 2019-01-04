//
//  Circle.m
//  Stretch Problem 8 - Custom Shape Classes
//
//  Created by Kaleo Kim on 5/8/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "Circle.h"

@implementation Circle

- (double)area {
    return self.radius * self.radius * M_PI;
}
- (double)perimeter {
    return 2 * M_PI * self.radius;
}
- (double)diameter {
    return  2 * self.radius;
}
@end
