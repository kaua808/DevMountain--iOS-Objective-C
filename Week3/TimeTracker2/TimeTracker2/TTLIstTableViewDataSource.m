//
//  TTLIstViewDataSource.m
//  TimeTracker2
//
//  Created by Kaleo Kim on 5/14/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "TTLIstTableViewDataSource.h"
#import "ProjectController.h"

@implementation TTLIstTableViewDataSource

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return [[ProjectController sharedInstance].projects count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ListCell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"ListCell"];
    }
    
    Project *project = [ProjectController sharedInstance].projects[IndexPath.row];
    
    cell.textLabel.text = project.title;
    cell.detailTextLabel.text = project.projectTime;
    
    return cell;
}


@end
