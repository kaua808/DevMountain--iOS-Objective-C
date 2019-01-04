//
//  Project.h
//  TimeTracker2
//
//  Created by Kaleo Kim on 5/14/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"

@interface Project : NSObject
@property (nonatomic, strong) NSString *title;
@property (strong, nonatomic) NSArray *entries;

- (NSDictionary *)projectDictionary;
- (id)initWithDictionary:(NSDictionary *)dictionary;
- (void)addEntry:(Entry *)entry;

- (void)removeEntry:(Entry *)entry;

@end
