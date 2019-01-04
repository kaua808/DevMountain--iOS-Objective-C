//
//  AppDelegate.m
//  Stretch Problem 5 - create two arrays and compare and log vowels
//
//  Created by Kaleo Kim on 5/5/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    NSString *home = @"I grew up in Mililani Hawaii and I love it";
    
//    NSArray *vowels = @[@"a", @"e", @"i", @"o", @"u"];
    
    NSLog(@"%i", [self numberOfVowelsInString:home]);
    
    
    return YES;
}

//- (void)vowelCounter:(NSString *)str array:(NSArray *)array {
//    NSArray *homeArray = [str componentsSeparatedByString:@""];
//    const char *homeArray = [str UTF8String];
//    NSMutableArray *homeArray = [[NSMutableArray alloc] initWithCapacity:[str length]];
//    for (int i=0; i < [str length]; i++) {
//        NSString *ichar  = [NSString stringWithFormat:@"%c", [str characterAtIndex:i]];
//        [homeArray addObject:ichar];
//    }
//    
//    
//    NSLog(@"%@", homeArray);
//    NSInteger count = 0;
    
//    NSArray *array1 = [[NSArray alloc] initWithObjects:@"a",@"b",@"c",nil];
//    NSArray *array2 = [[NSArray alloc] initWithObjects:@"a",@"d",@"c",nil];
//    NSMutableArray *aryResult = [[NSMutableArray alloc] init];
//    for(int i = 0;i<[array count];i++)
//    {
//        for(int j= 0;j<[homeArray count];j++)
//        {
//            if([[array objectAtIndex:i] isEqualToString:[homeArray objectAtIndex:j]])
//            {
//                [aryResult addObject:[array objectAtIndex:i]];
//                break;
//            }
//        }
//    }
    
//    for (int i = 0; i < array.count; i++) {
//        for (int j = 0; j < homeArray.count; j++) {
//            if (array[j] == homeArray[i]) {
//                count++;
//            } else {
//                i--;
//                j--;
//            }
//        }
//    }
    
//    return NSLog(@"number of vowels is %ld", (long)aryResult.count);
//}

- (int)numberOfVowelsInString:(NSString *)string {
    int numberOfVowels = 0;
    
    NSArray *vowels = @[@"a", @"e", @"i", @"o", @"u", @"A", @"E", @"I", @"O", @"U"];
    
    for (int i = 0; i < [string length]; i++) {
        unichar character = [string characterAtIndex:i];
        NSString * charString = [NSString stringWithCharacters:&character length:1];
        
        for (int j = 0; j < [vowels count]; j++) {
            NSString *vowelString = [vowels objectAtIndex:j];
            if ([charString isEqualToString:vowelString]) {
                numberOfVowels ++;
            }
        }
    }
    return numberOfVowels;

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
