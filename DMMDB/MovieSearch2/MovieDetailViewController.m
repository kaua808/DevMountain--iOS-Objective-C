//
//  MovieDetailViewController.m
//  MovieSearch2
//
//  Created by Taylor Mott on 22 May 15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "MovieDetailViewController.h"

@interface MovieDetailViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *posterImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *releaseDateHeaderLabel;
@property (weak, nonatomic) IBOutlet UILabel *releaseDateLabel;
@property (weak, nonatomic) IBOutlet UILabel *ratingHeaderLabel;
@property (weak, nonatomic) IBOutlet UILabel *ratingLabel;
@property (weak, nonatomic) IBOutlet UILabel *voteCountHeaderLabel;
@property (weak, nonatomic) IBOutlet UILabel *voteCountLabel;
@property (weak, nonatomic) IBOutlet UILabel *taglineLabel;
@property (weak, nonatomic) IBOutlet UILabel *summaryLabel;

@end

@implementation MovieDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = self.movie.title;
    self.view.backgroundColor = [UIColor whiteColor];
    

    [self loadImage];

    self.titleLabel.text = self.movie.title;
    
    self.releaseDateHeaderLabel.text = @"Release Date:";
    
    self.releaseDateLabel.text = self.movie.releaseDate;
    
    self.ratingHeaderLabel.text = @"Rating:";
    
    self.ratingLabel.text = [self.movie.rating stringValue];

    self.voteCountHeaderLabel.text = @"Vote Count:";

    self.voteCountLabel.text = [self.movie.voteCount stringValue];
    
    self.taglineLabel.text = self.movie.tagline;
    self.taglineLabel.numberOfLines = 0;

    self.summaryLabel.text = self.movie.summary;
    self.summaryLabel.numberOfLines = 0;
    
    //Set up constraints with whatever method you feel most comfortable with

}

- (void)loadImage
{
    NSString *baseImageURL = @"http://image.tmdb.org/t/p/w92";
    NSString *stringURL = [baseImageURL stringByAppendingString:self.movie.imagePath];
    
    NSURL *url = [NSURL URLWithString:stringURL];
    
    NSURLSession *session = [NSURLSession sharedSession];
    
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (error)
        {
            NSLog(@"ERROR loading image");
        }
        else
        {
            //Updating the UI must occur on main thread
            dispatch_async(dispatch_get_main_queue(), ^{
                self.posterImageView.image = [UIImage imageWithData:data];
            });
        }
    }];
    
    [dataTask resume];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
