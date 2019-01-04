//
//  AppDelegate.m
//  ConditionalPlacement
//
//  Created by Kaleo Kim on 4/26/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    NSInteger karl = 10;
    NSInteger leonard = 7;
    
    NSInteger karlPlace = karl > 7 ? 1 : 2;
    NSInteger leonardPlace = leonard > 7 ? 1 : 2;
    
    if (karlPlace ==1 && leonardPlace == 1)
    {
        NSLog(@"Both teachers are placed 1");
    } else {
        if (karlPlace == 1) {
            NSLog(@"Karl is placed 1 and Leonard is placed 2");
        } else {
            if (leonardPlace == 1)
            {
                NSLog(@"Leonard is placed 1 and Karl is placed 2");
            } else {
                NSLog(@"Karl and Leonard are placed 2");
            }
        }
        
    };
    
    
    return YES;
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
