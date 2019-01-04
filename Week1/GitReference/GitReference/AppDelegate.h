//
//  AppDelegate.h
//  GitReference
//
//  Created by Kaleo Kim on 4/27/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

- (NSArray *)gitCommands;
- (CGFloat)heightOfReferenceString:(NSString *)reference;
@end
