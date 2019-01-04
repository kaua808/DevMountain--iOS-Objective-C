//
//  ListTableViewDataSource.m
//  DayX2
//
//  Created by Kaleo Kim on 5/5/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "ListTableViewDataSource.h"


@implementation ListTableViewDataSource

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell"];
    cell.textLabel.text = [EntryController sharedInstance].entries[indexPath.row];
    
    return cell;
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [EntryController sharedInstance].entries.count;
}

@end