//
//  Driver.h
//  Review Playground
//
//  Created by Kaleo Kim on 6/4/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class NSManagedObject;

@interface Driver : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSNumber * numberOfAccidents;
@property (nonatomic, retain) NSSet *cars;
@end

@interface Driver (CoreDataGeneratedAccessors)

- (void)addCarsObject:(NSManagedObject *)value;
- (void)removeCarsObject:(NSManagedObject *)value;
- (void)addCars:(NSSet *)values;
- (void)removeCars:(NSSet *)values;

@end
