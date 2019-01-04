//
//  ContactDataSource.m
//  Stretch Problem 17 - sectioned table view
//
//  Created by Kaleo Kim on 6/2/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "ContactDataSource.h"
#import "ContactController.h"

@implementation ContactDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [ContactController contacts].count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"contactCell"];
    
      cell.textLabel.text = [Contact fullName:indexPath.row];
//    cell.detailTextLabel.text = [RARecipes descriptionAtIndex:indexPath.row];
    
    return cell;
}

@end
