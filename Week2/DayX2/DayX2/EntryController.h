//
//  EntryController.h
//  DayX2
//
//  Created by Kaleo Kim on 5/16/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"

@interface EntryController : NSObject

@property (strong, nonatomic, readonly) NSArray *entries;

+ (EntryController *)sharedInstance;
- (Entry *)createEntry:(NSString *)title bodyText:(NSString *)bodyText;
- (void)addEntry:(Entry *)entry;
- (void)removeEntry:(Entry *)entry;

@end
