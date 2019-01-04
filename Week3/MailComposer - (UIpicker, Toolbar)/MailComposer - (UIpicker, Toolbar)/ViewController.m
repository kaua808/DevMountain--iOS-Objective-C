//
//  ViewController.m
//  MailComposer - (UIpicker, Toolbar)
//
//  Created by Kaleo Kim on 5/14/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "ViewController.h"
#import <MessageUI/MessageUI.h>

@interface ViewController () <MFMailComposeViewControllerDelegate, UIPickerViewDataSource, UIPickerViewDelegate>

@property (nonatomic) NSArray *data;
@property (nonatomic) NSArray *cities;
@property (nonatomic, weak) IBOutlet UIPickerView *pickerView;

@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.data = @[@"Hawaii", @"Utah", @"Nevada", @"california"];
    self.cities = @[@"Mililani", @"Provo", @"LasVegas", @"Aneheim"];
    
     [[UIToolbar appearance] setBarTintColor:[UIColor redColor]];
    
    //how to add a toolbar programatically
    UIToolbar *toolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 44.0)];
    
    [self.view addSubview:toolbar];
    
    UIBarButtonItem *openEmail = [[UIBarButtonItem alloc] initWithTitle:@"Open Email" style:UIBarButtonItemStylePlain target:self action:@selector(openEmailComposer:)];
    
    UIBarButtonItem *flexibleSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    
    UIBarButtonItem *compose = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCompose target:self action:@selector(openEmailComposer:)];
    
    UIBarButtonItem *fixedSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    
    fixedSpace.width = 100.f;
    
    toolbar.items = @[openEmail, flexibleSpace, compose, fixedSpace];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 2;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    if (component == 0) {
        return [self.data count];
    } else if (component == 1) {
        return [self.cities count];
    }
    
    return 0;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    
    if (component == 0) {
        return self.data[row];
    } else if (component == 1) {
        return self.cities[row];
    }
    
    return @"";
    
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    NSString *selectedState = self.data[row];
    NSLog(@"%@", selectedState);
}


- (IBAction)openEmailComposer:(id)sender {
    
//    if ([MFMailComposeViewController canSendMail]) {
//        
//    }
    MFMailComposeViewController *composer = [MFMailComposeViewController new];
    
    [[UINavigationBar appearance] setBarTintColor:[UIColor greenColor]];
    
    composer.mailComposeDelegate = self;
    
    NSInteger selectedIndex = [self.pickerView selectedRowInComponent:0];
    
    [composer setSubject:self.data[selectedIndex]];
    

    [composer setToRecipients:@[@"kauakim@gmail.com"]];
    [composer setCcRecipients:@[]];
    [composer setBccRecipients:@[]];
    [composer setMessageBody:@"hi" isHTML:NO];
    [composer setMessageBody:@"<html></html>" isHTML:YES];
//    [composer addAttachmentData:<#(NSData *)#> mimeType:<#(NSString *)#> fileName:<#(NSString *)#>];
    

    
    [self presentViewController:composer animated:YES completion:nil];
}



-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error {
    [self dismissViewControllerAnimated:YES completion:nil];
}




@end
