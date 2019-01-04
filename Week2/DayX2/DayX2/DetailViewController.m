//
//  DetailViewController.m
//  DayX2
//
//  Created by Kaleo Kim on 5/16/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
//made the text field a property
@property (weak, nonatomic) IBOutlet UITextField *textField;

@property (weak, nonatomic) IBOutlet UITextView *textView;


@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//with that property (the one defined at the top as "textfield") I am dismissing the keyboard
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    [self.textView resignFirstResponder];
    
    return YES;
}

- (IBAction)clearButtonTapped:(id)sender {
    
    self.textField.text = @"";
    self.textView.text = @"";
}

- (IBAction)saveButtonTapped:(id)sender {
    
    if (self.entry) {
        self.entry.title = self.textField.text;
        self.entry.body = self.textView.text;
        self.entry.timestamp = [NSDate date];
//        [[EntryController sharedInstance] ];
    } else {
        self.entry = [[EntryController sharedInstance] createEntry:self.textField.text bodyText:self.textView.text];
    }
    
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
