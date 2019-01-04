//
//  DetailViewController.m
//  DayX
//
//  Created by Kaleo Kim on 5/4/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "DetailViewController.h"
#import "EntryController.h"

@interface DetailViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UITextView *bodyTextView;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self updateWithEntry:self.entry];
}




- (IBAction)saveButtonTapped:(id)sender {
    
    if (self.entry) {
        self.entry.title = self.textField.text;
        self.entry.text = self.bodyTextView.text;
        self.entry.timestamp = [NSDate date];
//        [[EntryController sharedInstance] save];
        
        [[EntryController sharedInstance] updateEntry:self.entry];
    }
    else {
        [[EntryController sharedInstance] addEntryWithTitle:self.textField.text text:self.bodyTextView.text date:[NSDate date]];
//        self.entry = [[EntryController sharedInstance] createEntryWithTitle:self.textField.text bodyText:self.bodyTextView.text];
    }
}

-(void)updateWithEntry: (Entry *)entry {
    
    self.textField.text = entry.title;
    self.bodyTextView.text = entry.text;
    
}


- (IBAction)clearButtonTapped:(id)sender {
    self.textField.text = @"";
    self.bodyTextView.text = @"";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
