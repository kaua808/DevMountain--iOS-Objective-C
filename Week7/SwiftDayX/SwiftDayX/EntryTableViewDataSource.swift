//
//  EntryTableViewDataSource.swift
//  SwiftDayX
//
//  Created by Kaleo Kim on 6/16/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

import UIKit

class EntryTableViewDataSource: NSObject, UITableViewDataSource {
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let entry = entryController.sharedInstance.entries[indexPath.row]
        
        let cell = tableView.dequeueReusableCellWithIdentifier("entryCell") as! UITableViewCell
        
        cell.textLabel?.text = entry.title
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return entryController.sharedInstance.entries.count
    }
    
}
