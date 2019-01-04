//
//  TextFieldTableViewCell.m
//  DemoTableViews
//
//  Created by Kaleo Kim on 6/11/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "TextFieldTableViewCell.h"
#import "UIView+FLKAutoLayout.h"

@interface TextFieldTableViewCell () <UITextFieldDelegate>

@end

@implementation TextFieldTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        self.textField = [UITextField new];
        self.textField.delegate = self;
        [self.contentView addSubview:self.textField];
        
        //[self.textField alignLeading:@"16" trailing:@"16" toView:self.contentView];
        //[self.textField alignTop:@"5" bottom:@"5" toView:self.contentView];
        
        [self.textField alignTop:@"5" leading:@"16" bottom:@"-5" trailing:@"-16" toView:self.contentView];
    }
    
    return self;
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    [self.delegate textFieldDidEndEditing:self];
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
