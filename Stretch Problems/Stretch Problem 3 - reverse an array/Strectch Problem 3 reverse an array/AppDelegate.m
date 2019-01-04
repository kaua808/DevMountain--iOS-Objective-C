//
//  AppDelegate.m
//  Strectch Problem 3 reverse an array
//
//  Created by Kaleo Kim on 5/1/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    NSArray *letters = @[@"A", @"B", @"C", @"D", @"E"];
    
    NSLog(@"%@", [self reverseArray:letters]);
    
    return YES;
}

- (NSArray *)reverseArray:(NSArray *)array {
    return [[array reverseObjectEnumerator] allObjects];
}

//- (NSArray *)reverseArray:(NSArray *)array {
//    NSMutableArray *reversedArray = [NSMutableArray new];
//    
//    for (int i = ((int)array.count) - 1; i >= 0; i--) {
//        [reversedArray addObject:array[i]];
//    }
//    
//    return array;
//}

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
