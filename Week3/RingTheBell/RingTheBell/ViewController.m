//
//  ViewController.m
//  RingTheBell
//
//  Created by Kaleo Kim on 5/11/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "ViewController.h"
#import "Teacher.h"
#import "Secretary.h"
#import "Student.h"

NSString * const firstBell = @"firstbell";
NSString * const lastBell = @"lastbell";

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Teacher *teacher = [[Teacher alloc] init];
    Student *student = [[Student alloc] init];
    Secretary *secretary = [[Secretary alloc] init];

    [[NSNotificationCenter defaultCenter] postNotificationName:firstBell object:self];
    [[NSNotificationCenter defaultCenter] postNotificationName:lastBell object:self];
    
    [teacher self];
    [student self];
    [secretary self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//
//- (void)registerForNotification {
//    NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
//    [nc addObserver:self selector:@selector(teacher.firstBell:) name:firstBell object:nil];
//    [nc addObserver:self selector:@selector(teacher.lastBell:) name:lastBell object:nil];
//    
//    
//}
//
//- (void)unregisterFornotification {
//    NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
//    [nc removeObserver:self];
//}

@end
