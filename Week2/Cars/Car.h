//
//  Car.h
//  Cars
//
//  Created by Kaleo Kim on 5/6/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject

@property (strong, nonatomic) NSString *color;
@property (strong, nonatomic) NSString *model;
@property (strong, nonatomic) NSString *make;
@property (nonatomic) int year;

- (void)go;
- (void)stop;
- (void)honk;

@end
