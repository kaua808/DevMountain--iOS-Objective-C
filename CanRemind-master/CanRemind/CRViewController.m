//
//  CRViewController.m
//  CanRemind
//
//  Created by Joshua Howland on 6/5/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "CRViewController.h"

@interface CRViewController ()
@property (weak, nonatomic) IBOutlet UIButton *scheduleButton;

@end

@implementation CRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)scheduleTenSeconds:(id)sender {
    
    UILocalNotification *notification = [UILocalNotification new];
    
    if (notification) {
        notification.fireDate = [[NSDate new] dateByAddingTimeInterval:3];
        
        notification.timeZone = [NSTimeZone defaultTimeZone];
        notification.repeatInterval = 0;
        notification.soundName = @"bell_tree.mp3";
        notification.applicationIconBadgeNumber = 1;
        notification.alertBody = @"hey dude!";
        
        
        [[UIApplication sharedApplication] scheduledLocalNotification:notification];
    }
    
}

@end
