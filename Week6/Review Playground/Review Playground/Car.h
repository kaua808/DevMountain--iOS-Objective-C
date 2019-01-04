//
//  Car.h
//  Review Playground
//
//  Created by Kaleo Kim on 6/4/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Driver;

@interface Car : NSManagedObject

@property (nonatomic, retain) NSNumber * mile;
@property (nonatomic, retain) NSString * make;
@property (nonatomic, retain) NSString * model;
@property (nonatomic, retain) NSNumber * year;
@property (nonatomic, retain) NSString * color;
@property (nonatomic, retain) NSSet *drivers;
@end

@interface Car (CoreDataGeneratedAccessors)

- (void)addDriversObject:(Driver *)value;
- (void)removeDriversObject:(Driver *)value;
- (void)addDrivers:(NSSet *)values;
- (void)removeDrivers:(NSSet *)values;

@end
