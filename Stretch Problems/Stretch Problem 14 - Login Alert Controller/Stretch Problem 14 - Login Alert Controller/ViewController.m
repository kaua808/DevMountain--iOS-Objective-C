//
//  ViewController.m
//  Stretch Problem 14 - Login Alert Controller
//
//  Created by Kaleo Kim on 5/25/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)loginButton {
    UIAlertController *loginAlert = [UIAlertController alertControllerWithTitle:@"login" message:@"Please enter your stuff" preferredStyle:UIAlertControllerStyleAlert];
    
    [loginAlert addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        textField.placeholder = @"Username";
    }];
    
    [loginAlert addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        textField.placeholder = @"Password";
        textField.secureTextEntry = YES;
    }];
    
    
    [loginAlert addAction:[UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil]];
    
    [loginAlert addAction:[UIAlertAction actionWithTitle:@"Login" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        NSString *enteredUsername = ((UITextField *)(loginAlert.textFields[0])).text;
        NSString *enteredPassword = ((UITextField *)(loginAlert.textFields[1])).text;
        
        if ([enteredUsername isEqualToString:@"iosstudent"] && [enteredPassword isEqualToString:@"i0$student"]) {
            self.view.backgroundColor = [UIColor greenColor];
        } else {
            self.view.backgroundColor = [UIColor redColor];
        }
    }]];
    
    [self presentViewController:loginAlert animated:YES completion:nil];
    
    
}


@end
