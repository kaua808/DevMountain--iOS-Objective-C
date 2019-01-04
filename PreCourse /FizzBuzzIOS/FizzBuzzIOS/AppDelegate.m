//
//  AppDelegate.m
//  FizzBuzzIOS
//
//  Created by Kaleo Kim on 4/26/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    for (int i = 1; i < 101; i++) {
        if ([self isBuzzed:i] == true && [self isFizzed:i] == false) {
            NSLog(@"Buzz");
        }
        if ([self isFizzed:i] == true && [self isBuzzed:i] == false) {
            NSLog(@"Fizzed");
        }
        if ([self isFizzed:i] && [self isBuzzed:i] == true) {
            NSLog(@"FizzBuzz");
        }
        if ([self isFizzed:i] && [self isBuzzed:i] == false) {
            NSLog(@"%d", i);
        }
    }
    
    
    return YES;
}

- (BOOL)isBuzzed:(int)number {
    // NSString *intString = [NSString stringWithFormat:@"%i", integer];
    NSString *numStr = [NSString stringWithFormat:@"%d", number];
    if (number % 3 == 0) {
        return true;
    } else {
        if ([numStr rangeOfString:@"3"].location != NSNotFound) {
            return true;
        } else {
            return false;
        }
    }
}

- (BOOL)isFizzed:(int)number {
    
    NSString *numStr = [NSString stringWithFormat:@"%d", number];
    if (number % 5 == 0) {
        return true;
    } else {
        if ([numStr rangeOfString:@"5"].location != NSNotFound) {
            return true;
        } else {
            return false;
        }
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
