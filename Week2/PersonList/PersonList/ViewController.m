//
//  ViewController.m
//  PersonList
//
//  Created by Joshua Howland on 1/27/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    Person *person = [Person new];
    
    person.imageName = @"Kaleo.png";
    person.name = @"Kaleo";
    person.phoneNumber = @"1-800-MAMA!";
    person.job = @"none";
    
    NSLog(@"%@",[person personDictionary]);
    
    NSDictionary *personDict = [person personDictionary];
    
    Person *person2 = [[Person alloc] initPersonWithDictionary:personDict];
    
    NSLog(@"name: %@", person2.name);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
