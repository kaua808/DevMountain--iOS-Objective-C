//
//  Team.h
//  
//
//  Created by Kaleo Kim on 6/10/15.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class NSManagedObject;

@interface Team : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSSet *persons;
@end

@interface Team (CoreDataGeneratedAccessors)

- (void)addPersonsObject:(NSManagedObject *)value;
- (void)removePersonsObject:(NSManagedObject *)value;
- (void)addPersons:(NSSet *)values;
- (void)removePersons:(NSSet *)values;

@end
