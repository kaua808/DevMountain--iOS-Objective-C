//
//  EntryController.h
//  DayX
//
//  Created by Ai Mecham on 5/6/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"

@interface EntryController : NSObject

@property (strong, nonatomic, readonly) NSArray *entries;

+ (EntryController *)sharedInstance;

//- (Entry *)createEntryWithTitle: (NSString *)title bodyText: (NSString *)bodyText;
//
//- (void)addEntry: (Entry *)entry;
//
//- (void)removeEntry: (Entry *)entry;

- (void)addEntryWithTitle:(NSString *)title text:(NSString *)text date:(NSDate *)date;
- (void)updateEntry:(Entry *)entry;
- (void)removeEntry:(Entry *)entry;

//- (void)save;

@end
