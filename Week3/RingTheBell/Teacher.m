//
//  Teacher.m
//  RingTheBell
//
//  Created by Kaleo Kim on 5/11/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "Teacher.h"
#import "ViewController.h"

@implementation Teacher

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self registerForNotification];
    }
    return self;
}

- (void)dealloc {
    [self unregisterFornotification];
}

- (void)registerForNotification {
    NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
    [nc addObserver:self selector:@selector(respondToFirstBell:) name:firstBell object:nil];
    [nc addObserver:self selector:@selector(respondToLastBell:) name:lastBell object:nil];
    
    
}

- (void)unregisterFornotification {
    NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
    [nc removeObserver:self];
}

- (void)respondToFirstBell:(NSNotification *)notification {
    NSLog(@"Get ready to take roll");
}

- (void)respondToLastBell:(NSNotification *)notification {
    NSLog(@"Enter Grades for the Day");
}

@end
