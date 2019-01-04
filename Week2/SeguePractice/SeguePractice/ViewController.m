//
//  ViewController.m
//  SeguePractice
//
//  Created by Kaleo Kim on 5/4/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;

//@property (strong, nonatomic) DetailViewController *detailVC;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    

}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    DetailViewController *detailViewController = segue.destinationViewController;
    
    detailViewController.string = self.textField.text;
    
    
//    self.detailVC = [DetailViewController new];
    

    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
