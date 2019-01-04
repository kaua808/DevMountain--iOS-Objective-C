//
//  ViewController.m
//  NSUrlSessionPlayground
//
//  Created by Kaleo Kim on 5/26/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "ViewController.h"
#import "AppResult.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSURLSession *session = [NSURLSession sharedSession];
    
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:@"https://itunes.apple.com/search?term=apple&media=software"] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        NSError *serializationError;
        
        NSDictionary *serializedResult = [NSJSONSerialization JSONObjectWithData:data options:0 error:&serializationError];
        
        NSArray *arrayOfResults = serializedResult[@"results"];
        
        NSMutableArray *convertedResults = [NSMutableArray new];
        
        
        for (NSDictionary *dictionary in arrayOfResults) {
            AppResult *result = [[AppResult alloc] initWithDictionary:dictionary];
            [convertedResults addObject:result];
        }
        
    }];
    
    [dataTask resume];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
