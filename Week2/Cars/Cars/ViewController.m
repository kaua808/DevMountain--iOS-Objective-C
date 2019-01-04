//
//  ViewController.m
//  Cars
//
//  Created by Kaleo Kim on 5/6/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "ViewController.h"
#import "Car.h"
#import "House.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    Car *myCar = [Car new];
    myCar.year = 2000;
    myCar.make = @"Honda";
    myCar.model = @"Accord";
    myCar.color = @"Gold";
    
    [myCar go];
    [myCar stop];
    [myCar honk];
    
    House *myHouse = [House new];
    myHouse.numberOfRooms = 5;
    myHouse.streetNumber = @"95-102";
    myHouse.City = @"Mililani";
    myHouse.state = @"Hawaii";
    myHouse.zipCode = @"96789";
    
    [myHouse home];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
