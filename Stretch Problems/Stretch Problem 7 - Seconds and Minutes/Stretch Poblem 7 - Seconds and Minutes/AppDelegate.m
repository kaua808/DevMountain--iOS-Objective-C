//
//  AppDelegate.m
//  Stretch Poblem 7 - Seconds and Minutes
//
//  Created by Kaleo Kim on 5/7/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (nonatomic, assign) NSInteger seconds;
@property (nonatomic, assign) NSInteger minutes;


@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    
    self.minutes = 0;
    self.seconds = 10;
    [self startTimer];

    
    return YES;
}


//- (void)decreaseSecond:(NSInteger)second minute:(NSInteger)minute {
//    NSInteger seconds = second;
//    NSInteger minutes = minute;
//    
//        if (seconds == 0) {
//            seconds = 60;
//            minutes -= 1;
//            NSLog(@"seconds: %ld", (long)minutes);
//        } else if (seconds > 0) {
//            seconds -= 1;
//            NSLog(@"seconds: %ld", (long)seconds);
//        } else if (seconds == 0 && minutes == 0) {
//            NSLog(@"done");
//        }
//    
//}

- (void)startTimer {
    [self decreaseSeconds];
}

- (void)decreaseSeconds {
    if (self.seconds > 0) {
        self.seconds --;
        [self performSelector:@selector(decreaseSeconds) withObject:nil afterDelay:1.0];
    } else if (self.minutes > 0) {
        self.minutes--;
        self.seconds = 59;
        [self performSelector:@selector(decreaseSeconds) withObject:nil afterDelay:1.0];
    } else {
        NSLog(@"timer complete");
    }
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
