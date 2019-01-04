//
//  ACImageScrollViewController.m
//  Autocorrect
//
//  Created by Joshua Howland on 6/3/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "ACImageScrollViewController.h"

NSInteger const count = 8;

@interface ACImageScrollViewController ()

@end

@implementation ACImageScrollViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:scrollView];
    
    scrollView.contentSize = CGSizeMake(self.view.frame.size.width * count, self.view.frame.size.height);
    scrollView.pagingEnabled = YES;

    for (int i = 0; i < count; i++) {

        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg", i + 1]];
        
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];

        imageView.frame = CGRectMake(i * self.view.frame.size.width + 20, 20, self.view.frame.size.width - 40, self.view.frame.size.height - 40);
        imageView.contentMode = UIViewContentModeScaleAspectFit;
        
        [scrollView addSubview:imageView];
        
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
