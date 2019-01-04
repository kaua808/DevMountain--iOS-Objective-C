//
//  AppearanceController.m
//  The-Pomodoro-iOS8
//
//  Created by Taylor Mott on 19.2.2015.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "AppearanceController.h"
#import "TimerViewController.h"

@implementation AppearanceController

+ (void)initializeAppearanceDefaults
{
    [[UINavigationBar appearance] setBackgroundColor:[UIColor colorWithRed:0 green:125 blue:195 alpha:1]];
    
    [[UINavigationBar appearance] setTitleTextAttributes:@{
                                                           NSForegroundColorAttributeName:[UIColor colorWithRed:240.0f/255.0f
                                                                                                          green:81.0f/255.0f
                                                                                                           blue:51.0f/255.0f
                                                                                                          alpha:1.0f],
                                                           NSFontAttributeName: [UIFont fontWithName:@"Chalkduster" size:20]
                                                           }];
    
    [[UITabBar appearance] setTintColor:[UIColor blackColor]];
    [[UIView appearanceWhenContainedIn:[TimerViewController class], nil] setBackgroundColor:[UIColor blackColor]];
    
//    [[UINavigationBar appearance] setBarTintColor:[UIColor purpleColor]];
//    [[UINavigationBar appearance] setTitleTextAttributes:@{
//                                                           NSForegroundColorAttributeName : [UIColor whiteColor],
//                                                           NSFontAttributeName: [UIFont fontWithName:@"Avenir-Light" size:20]
//                                                           }];
//    [[UITabBar appearance] setTintColor:[UIColor purpleColor]];
//    
//    
//    
//    //Extra Appearance Modifications not in directions
//    [[UIButton appearance] setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//    [[UIView appearanceWhenContainedIn:[TimerViewController class], nil] setBackgroundColor:[UIColor purpleColor]];
//    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
}

@end
