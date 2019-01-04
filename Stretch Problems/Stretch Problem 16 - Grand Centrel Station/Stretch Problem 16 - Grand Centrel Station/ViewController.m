//
//  ViewController.m
//  Stretch Problem 16 - Grand Centrel Station
//
//  Created by Kaleo Kim on 5/27/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController {
    dispatch_queue_t myQueue;
}



- (IBAction)longRunningOperation:(id)sender {
    
    dispatch_async(myQueue, ^{
        [NSThread sleepForTimeInterval:5];
        
        dispatch_async(dispatch_get_main_queue(), ^{
             self.label.text = [NSString stringWithFormat:@"%u", arc4random()];
        });
    });

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    if (!myQueue) {
        myQueue = dispatch_queue_create("com.devmountain.queue", NULL);
    }
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
