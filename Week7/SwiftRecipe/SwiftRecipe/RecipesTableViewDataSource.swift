//
//  RecipesTableViewDataSource.swift
//  SwiftRecipe
//
//  Created by Kaleo Kim on 6/15/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

import UIKit

class RecipesTableViewDataSource: NSObject, UITableViewDataSource {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return RARecipes.count()
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell") as? UITableViewCell
        
        if cell == nil {
            cell = UITableViewCell(style: .Default, reuseIdentifier: "cell")
        }
        
        cell?.textLabel!.text = RARecipes.titleAtIndex(indexPath.row)
        
        return cell!
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Recipe.com"
    }
}
