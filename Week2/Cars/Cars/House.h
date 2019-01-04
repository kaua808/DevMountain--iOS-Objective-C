//
//  House.h
//  Cars
//
//  Created by Kaleo Kim on 5/6/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface House : NSObject
@property (nonatomic) int numberOfRooms;
@property (strong, nonatomic) NSString *streetNumber;
@property (strong, nonatomic) NSString *City;
@property (strong, nonatomic) NSString *state;
@property (strong, nonatomic) NSString zipCode;

- (void)home;
@end
