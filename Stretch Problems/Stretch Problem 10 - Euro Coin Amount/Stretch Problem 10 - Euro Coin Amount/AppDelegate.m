//
//  AppDelegate.m
//  Stretch Problem 10 - Euro Coin Amount
//
//  Created by Kaleo Kim on 5/19/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

//static float * const 2 = 2.0;
//static float * const 1 = 2.0;
//static float * const 0.50 = 2.0;
//static float * const 0.20 = 2.0;
//static float * const 0.10 = 2.0;
//static float * const 0.5 = 2.0;
//static float * const 0.2 = 2.0;
//static float * const 0.1 = 2.0;


@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSString *)eurocalculatorAmount:(int)amount {
    NSString *answerString = @"";
    
    //2 coins
    int coins = 0;
    while (amount >= 2) {
        coins++;
        amount -= 2;
    }
    switch (coins) {
        case 0:
            break;
        case 1: {
            NSString *coinString = [NSString stringWithFormat:@"%i 2 coin ", coins];
            answerString = [answerString stringByAppendingString:coinString];
            break;
        }
        default: {
            NSString *coinString = [NSString stringWithFormat:@"%i 2 coins ", coins];
            answerString = [answerString stringByAppendingString:coinString];
        }
            break;
    }
    
    //1 coins
    int coins = 0;
    while (amount >= 1) {
        coins++;
        amount -= 2;
    }
    switch (coins) {
        case 0:
            break;
        case 1: {
            NSString *coinString = [NSString stringWithFormat:@"%i 2 coin ", coins];
            answerString = [answerString stringByAppendingString:coinString];
            break;
        }
        default: {
            NSString *coinString = [NSString stringWithFormat:@"%i 2 coins ", coins];
            answerString = [answerString stringByAppendingString:coinString];
        }
            break;
    }
    
    //.50
    int coins = 0;
    while (amount >= 0.50) {
        coins++;
        amount -= 2;
    }
    switch (coins) {
        case 0:
            break;
        case 1: {
            NSString *coinString = [NSString stringWithFormat:@"%i 2 coin ", coins];
            answerString = [answerString stringByAppendingString:coinString];
            break;
        }
        default: {
            NSString *coinString = [NSString stringWithFormat:@"%i 2 coins ", coins];
            answerString = [answerString stringByAppendingString:coinString];
        }
            break;
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
