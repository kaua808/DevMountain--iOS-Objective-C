//
//  AppearanceManager.m
//  DesignNavigation
//
//  Created by Kaleo Kim on 5/12/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "AppearanceManager.h"

@implementation AppearanceManager

+ (void)setUpDefaultAppearance {
    [[UINavigationBar appearance] setBackgroundColor:[UIColor purpleColor]];
    
    [[UINavigationBar appearance] setTitleVerticalPositionAdjustment:25.5 forBarMetrics:UIBarMetricsDefault];
    
//    [[UINavigationBar appearance] setBarStyle:UIBarStyleBlack];
    
    
    [[UIButton appearance]setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [[UIButton appearance]setTitleColor:[UIColor greenColor] forState:UIControlStateHighlighted];
    
    [[UIToolbar appearance] setBackgroundImage:[UIImage imageNamed:@"beach.jpg"] forToolbarPosition:UIBarPositionBottom barMetrics:UIBarMetricsDefault];
    
}





@end
