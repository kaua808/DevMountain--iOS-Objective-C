//
//  ViewController.m
//  Three Card Monte
//
//  Created by Kaleo Kim on 5/13/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self showAlert];
    
}

- (void)showAlert {
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Choose A Cars" message:@"pick one any one" preferredStyle:UIAlertControllerStyleAlert];
    
    [alert addAction:[UIAlertAction actionWithTitle:@"Card 1" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [self looseAlert];
    }]];
    
    [alert addAction:[UIAlertAction actionWithTitle:@"Card 2" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        
    }]];
    
    [alert addAction:[UIAlertAction actionWithTitle:@"Card 3" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        
    }]];
    
    [self.navigationController presentViewController:alert animated:YES completion:nil];
}

- (void)winAlert {

    UIAlertController *win = [UIAlertController alertControllerWithTitle:@"Winner" message:@"You won" preferredStyle:UIAlertControllerStyleActionSheet];
    
    [win addAction:[UIAlertAction actionWithTitle:@"PLay again?" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [self showAlert];
    }]];
    [win addAction:[UIAlertAction actionWithTitle:@"I'm done" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
    }]];
    
    [self.navigationController presentViewController:win animated:YES completion:nil];
    
}

- (void)looseAlert {
    UIAlertController *lost = [UIAlertController alertControllerWithTitle:@"Loser" message:@"You lost" preferredStyle:UIAlertControllerStyleActionSheet];
    
    [lost addAction:[UIAlertAction actionWithTitle:@"PLay again?" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [self showAlert];
    }]];
    [lost addAction:[UIAlertAction actionWithTitle:@"Give Up" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
    }]];
    
    [self.navigationController presentViewController:lost animated:YES completion:nil];
}

//- (void)randomCardAction {
//    int index = (arc4random_uniform((int)([self lines].count)));
//    return [self lines][index];
//}

- (void)actions {
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
