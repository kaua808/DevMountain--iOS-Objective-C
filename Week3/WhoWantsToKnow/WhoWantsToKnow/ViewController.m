//
//  ViewController.m
//  WhoWantsToKnow
//
//  Created by Kaleo Kim on 5/11/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "ViewController.h"

NSString * const ViewAppearedNotificationName = @"ViewAppearedNotification";

@interface ViewController ()

@end

@implementation ViewController


//this sends out the bell
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
    [nc postNotificationName:ViewAppearedNotificationName object:self userInfo:nil];
}



@end
