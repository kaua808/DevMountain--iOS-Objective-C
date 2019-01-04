//
//  ViewController.m
//  Review Playground
//
//  Created by Kaleo Kim on 6/4/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "ViewController.h"
#import "Stack.h"
#import "Car.h"
#import "toggleTableViewCell.h"
#import <pop/POP.h>

static NSString * const ToggleCellID = @"toggleCell";

@interface ViewController () <UITableViewDataSource, ToggleCellDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
//    //this is how you instantiate a mamage object context
//    Car *car = [NSEntityDescription insertNewObjectForEntityForName:@"Car" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
//    
//    car.color = @"Red";
//    car.year = @1996;
//    
//    NSError *error;
//    
//    // this tells it to save that instance
//    [[Stack sharedInstance].managedObjectContext save:&error /*most time you just put "nil" here*/];
//    
//    if (error) {
//        NSLog(@"%@", error.description);
//    }
//    
//    NSArray *arrayOfAllCars = [self allcars];
//    
//    NSLog(@"%@", arrayOfAllCars);
    
}

//- (NSArray *) allcars {
//    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] initWithEntityName:@"Car"];
//    
//    return [[Stack sharedInstance].managedObjectContext executeFetchRequest:fetchRequest error:nil];
//}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    toggleTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ToggleCellID];
    
    cell.delegate = self;
    
    return cell;
}

- (void)toggle:(UISwitch *)toggle changedValueFromSender:(toggleTableViewCell *)sender {
    
    NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
    
    NSString *activityString = [NSString stringWithFormat:@"the toggle on the cell at index path %@ switched to %ld", indexPath, (long)toggle.on];
    
    NSLog(@"%@", activityString);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
