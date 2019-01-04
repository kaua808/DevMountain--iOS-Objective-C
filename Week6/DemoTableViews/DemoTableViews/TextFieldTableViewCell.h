//
//  TextFieldTableViewCell.h
//  DemoTableViews
//
//  Created by Kaleo Kim on 6/11/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TextFieldTableViewCellDelegate;

@interface TextFieldTableViewCell : UITableViewCell

@property (strong, nonatomic) UITextField *textField;
@property (strong, nonatomic) id <TextFieldTableViewCellDelegate> delegate;

@end

@protocol TextFieldTableViewCellDelegate <NSObject>

- (void)textFieldDidEndEditing:(TextFieldTableViewCell *)cell;

@end
