//
//  AppSettings.m
//  WhoWantsToKnow
//
//  Created by Kaleo Kim on 5/11/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "AppSettings.h"
#import "ViewController.h"

//@interface
//
//@property (strong, nonatomic) id observer;
//
//@end

@implementation AppSettings


+ (instancetype)sharedInstance {
    static AppSettings *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [AppSettings new];
        [sharedInstance registerForNotifications];
    });
    return sharedInstance;
}

- (void)dealloc {
    [self unregisterForNotifications];
}

//When you here the bell do this
- (void)registerForNotifications {
    NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
    
//    this is the other way besides the block method
    [nc addObserver:self
           selector:@selector(respondToViewAppeared:)
               name:ViewAppearedNotificationName
             object:nil];
    
    
    //this is the block method
//    self.observer = [nc addObserverForName:ViewAppearedNotificationName object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification *note) {
//        NSLog(@"hello");
//    }];
}

- (void)unregisterForNotifications {
    NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
    [nc removeObserver:self];
}

- (void)respondToViewAppeared:(NSNotification *)notifitcation {
    NSLog(@"view appear");
}

@end
