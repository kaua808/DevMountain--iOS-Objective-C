//
//  ViewController.m
//  MovieSearch2
//
//  Created by Taylor Mott on 22 May 15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "MovieListViewController.h"
#import "MovieController.h"
#import "MovieDetailViewController.h"

@interface MovieListViewController () <UITextFieldDelegate, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *seachField;
@property (weak, nonatomic) IBOutlet UIButton *searchButton;
@property (weak, nonatomic) IBOutlet UITableView *tableView;



@end

@implementation MovieListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)searchButtonPressed:(id)sender {
    [self hideKeyboard];
    [[MovieController sharedInstance] getMoviesWithName:self.seachField.text completion:^(BOOL success) {
        if (success) {
            //Updating the UI must occur on main thread
            dispatch_async(dispatch_get_main_queue(), ^{
                [self.tableView reloadData];
            });
        }
    }];
}



- (void)hideKeyboard
{
    [self.seachField resignFirstResponder];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    NSDictionary *selectedMovie = [MovieController sharedInstance].resultMovies[indexPath.row];
    
    NSNumber *selectedMovieID = selectedMovie[@"id"];
    
    NSString *selectedMovieIDString = [selectedMovieID stringValue];
    
    [[MovieController sharedInstance] getMovieWithID:selectedMovieIDString completion:^(Movie *movie) {
        if (movie)
        {
            MovieDetailViewController *detailViewController = [MovieDetailViewController new];
            detailViewController.movie = movie;
            
            //Updating the UI must occur on main thread
            dispatch_async(dispatch_get_main_queue(), ^{
                [self.navigationController pushViewController:detailViewController animated:YES];
            });
        }
    }];
}

@end
