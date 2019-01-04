//
//  Person.h
//  
//
//  Created by Kaleo Kim on 6/10/15.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Team;

@interface Person : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * email;
@property (nonatomic, retain) NSString * phone;
@property (nonatomic, retain) NSNumber * role;
@property (nonatomic, retain) Team *team;

@end
