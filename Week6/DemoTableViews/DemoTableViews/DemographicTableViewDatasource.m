//
//  DemographicTableViewDatasource.m
//  DemoTableViews
//
//  Created by Kaleo Kim on 6/11/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "DemographicTableViewDataSource.h"
#import "Demographics.h"
#import "TextFieldTableViewCell.h"
#import "GenderTableViewCell.h"
#import "MaritalTableViewCell.h"

typedef NS_ENUM(int16_t, DemographicsTableViewDataSourceSection) {
    NameSection = 0,
    AddressSection = 1,
    GenderSection = 2,
    AgeSection = 3,
    MaritalStatusSection = 4
};

static NSString *textFieldCellID = @"textField";
static NSString *genderCellID = @"gender";
static NSString *maritalCellID = @"marital";

@interface DemographicTableViewDataSource () <TextFieldTableViewCellDelegate>

@property (strong, nonatomic) Demographics *demographics;
@property (strong, nonatomic) UITableView *tableView;

@end

@implementation DemographicTableViewDataSource

- (void)registerTableView:(UITableView *)tableView {
    self.demographics = [Demographics new];
    self.tableView = tableView;
    [tableView registerClass:[TextFieldTableViewCell class] forCellReuseIdentifier:textFieldCellID];
    [tableView registerClass:[GenderTableViewCell class] forCellReuseIdentifier:genderCellID];
    [tableView registerClass:[MaritalTableViewCell class] forCellReuseIdentifier:maritalCellID];
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 5;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    switch (section) {
        case NameSection:
            return 2;
            break;
        case AddressSection:
            return 4;
            break;
        case GenderSection:
            return 1;
            break;
        case AgeSection:
            return 1;
            break;
        case MaritalStatusSection:
            return 1;
            break;
        default:
            return 0;
            break;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell;
    
    switch (indexPath.section) {
        case NameSection:
            cell = [tableView dequeueReusableCellWithIdentifier:textFieldCellID];
            //((TextFieldTableViewCell *)cell).delegate
            if (indexPath.row == 0) {
                ((TextFieldTableViewCell *)cell).textField.placeholder = @"First Name";
            } else {
                ((TextFieldTableViewCell *)cell).textField.placeholder = @"Last Name";
            }
            
            break;
        case AddressSection:
            cell = [tableView dequeueReusableCellWithIdentifier:textFieldCellID];
            if (indexPath.row == DemographicsStreetAddress) {
                ((TextFieldTableViewCell *)cell).textField.placeholder = @"Street Address";
            } else if (indexPath.row == DemographicsCity) {
                ((TextFieldTableViewCell *)cell).textField.placeholder = @"City";
            } else if (indexPath.row == DemographicsState) {
                ((TextFieldTableViewCell *)cell).textField.placeholder = @"State";
            } else if (indexPath.row == DemographicsZipCode) {
                ((TextFieldTableViewCell *)cell).textField.placeholder = @"Zipcode";
            }
            break;
        case GenderSection:
            cell = [tableView dequeueReusableCellWithIdentifier:genderCellID];
            //((GenderTableViewCell *)cell).segmentedControl
            break;
        case AgeSection:
            cell = [tableView dequeueReusableCellWithIdentifier:textFieldCellID];
            ((TextFieldTableViewCell *)cell).textField.placeholder = @"Age";
            ((TextFieldTableViewCell *)cell).textField.keyboardType = UIKeyboardTypeNumberPad;
            break;
        case MaritalStatusSection:
            cell = [tableView dequeueReusableCellWithIdentifier:maritalCellID];
            break;
        default:
            break;
    }
    
    return cell;
}

//-(void)textFieldDidEndEditing:(TextFieldTableViewCell *)cell {
//    UITextField *textField = cell.textField;
//    NSIndexPath *indexPath = [self.tableView indexPathForCell:cell];
//    
//    if (indexPath.section == NameSection) {
//        switch (indexPath.row) {
//            case 0:
//                self.demographics.firstName = textField.text;
//                break;
//            case 1:
//                self.demographics.lastName = textField.text;
//                break;
//        }
//    } else if (indexPath.)
//}
@end
