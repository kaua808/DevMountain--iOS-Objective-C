//
//  AppDelegate.m
//  Stretch Problem 12 - fibonacci sequence
//
//  Created by Kaleo Kim on 5/20/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    NSLog(@"%i", [self isInFibonacci:600]);
    
    
    return YES;
}

//- (BOOL)numberMatch:(NSInteger)num {
//    NSArray *fibonacciSequence = @[@0, @1, @1, @2, @3, @5, @8, @13, @21, @34, @55, @89, @144, @233];
//    
//    for (int i = 0; i < fibonacciSequence.count; i++) {
//        if (num == fibonacciSequence[i]) {
//            return YES;
//        } else {
//            return NO;
//        }
//    }
//    
//    return [self numberMatch:@45];
//}

- (BOOL)isInFibonacci:(NSInteger)num {
    BOOL isInFib = NO;
    NSInteger n0 = 0;
    NSInteger n1 = 1;
    NSInteger answer = 0;
    
    while (answer <= num) {
        if (answer == num) {
            isInFib = YES;
            return isInFib;
        } else {
            answer = n0 + n1;
            n0 = n1;
            n1 = answer;
            
        }
    }
    
    return isInFib;
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
