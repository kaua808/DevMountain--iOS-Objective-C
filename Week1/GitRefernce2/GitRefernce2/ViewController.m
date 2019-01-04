//
//  ViewController.m
//  GitRefernce2
//
//  Created by Kaleo Kim on 5/1/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "ViewController.h"

static CGFloat heightForLabel = 25;
static CGFloat margin = 15;
static NSString * const Command = @"command";
static NSString * const Reference = @"reference";

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.height - 20)];
    [self.view addSubview:scrollView];
    
    CGFloat topMargin = 20;
    CGFloat width = self.view.frame.size.width - 2 * margin;
    
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(margin, 20, width, 20)];
    title.text = @"GitReference";
    title.font = [UIFont boldSystemFontOfSize:25];
    [scrollView addSubview:title];
    
    CGFloat top = topMargin + heightForLabel + margin * 2;
    
    for (NSDictionary *gitCommand in [self gitCommands]) {
       
        NSString *command = gitCommand[Command];
        NSString *reference = gitCommand[Reference];
        
        UILabel *gitCommandLabel = [[UILabel alloc] initWithFrame:CGRectMake(margin, top, width, heightForLabel)];
        gitCommandLabel.font = [UIFont boldSystemFontOfSize:21];
        gitCommandLabel.text = command;
        [scrollView addSubview:gitCommandLabel];
        
        top += (heightForLabel + margin);
        
        CGFloat heightForReference = [self heightOfReferenceString:Reference];
        
        UILabel *gitReference = [[UILabel alloc] initWithFrame:CGRectMake(margin, top, width, heightForLabel)];
        gitReference.numberOfLines = 0;
        gitReference.font = [UIFont boldSystemFontOfSize:19];
        gitReference.text = reference;
        [scrollView addSubview:gitReference];
        
        top += (heightForReference + margin * 2);
    }
    
     scrollView.contentSize = CGSizeMake(self.view.frame.size.width, top);
}

- (NSArray *)gitCommands {
    
    return @[@{Command: @"git status", Reference: @": shows changed files"},
             @{Command: @"git diff", Reference: @": shows actual changes"},
             @{Command: @"git add .", Reference: @": adds changed files to the commit"},
             @{Command: @"git commit -m \"notes\"", Reference: @": commits the changes"},
             @{Command: @"git push origin _branch_", Reference: @": pushes commits to branch named _branch_"},
             @{Command: @"git log", Reference: @": displays progress log"},
             @{Command: @"git comment --amend", Reference: @": re-enter last commit message"}
             ];
    
}

- (CGFloat)heightOfReferenceString:(NSString *)reference {
    
    CGRect bounding = [reference boundingRectWithSize:CGSizeMake(self.view.frame.size.width - 2 * margin, 0)
                                              options:NSStringDrawingUsesLineFragmentOrigin
                                           attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:15]}
                                              context:nil];
    
    return bounding.size.height;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
