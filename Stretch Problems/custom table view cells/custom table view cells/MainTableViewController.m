//
//  MainTableViewController.m
//  custom table view cells
//
//  Created by Kaleo Kim on 5/27/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "MainTableViewController.h"
#import "Setting.h"
#import "SwitchTableViewCell.h"

typedef NS_ENUM(NSInteger, TableViewSection) {
    ColorSettingsSection,
    SharingSettingsSection,
    SoundSettingSection
};

@interface MainTableViewController () <SwitchTableViewCellDelegate>

@property (nonatomic, assign) NSInteger numRowsInColorSection;
@property (nonatomic, assign) NSInteger numRowsInSharingSetting;
@property (nonatomic, assign) NSInteger numRowsInSettingSection;

@end

@implementation MainTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.numRowsInColorSection = 3;
    self.numRowsInSharingSetting = 2;
    self.numRowsInSettingSection = 1;
    
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    switch (section) {
        case ColorSettingsSection:
            return self.numRowsInColorSection;
            break;
        case SharingSettingsSection:
            return self.numRowsInSharingSetting;
            break;
        case SoundSettingSection:
            return self.numRowsInSettingSection;
            break;
            
        default:
            return 0;
            break;
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SwitchTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[SwitchTableViewCell reuseIdentifier] forIndexPath:indexPath];
    
    cell.delegate = self;
    return cell;
}

- (void)cellSwitchToggle:(UISwitch *)toggle cell:(SwitchTableViewCell *)cell {
    NSLog(@"ViewController got the message");
}

@end
