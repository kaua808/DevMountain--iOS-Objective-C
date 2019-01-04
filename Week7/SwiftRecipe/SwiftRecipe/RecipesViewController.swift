//
//  RecipesViewController.swift
//  SwiftRecipe
//
//  Created by Kaleo Kim on 6/15/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

import UIKit

class RecipesViewController: UIViewController, UITableViewDelegate {
    
    var tableView: UITableView?
    var dataSource: RecipesTableViewDataSource?

    override func viewDidLoad() {
        super.viewDidLoad()

        self.dataSource = RecipesTableViewDataSource()
        // you could also write
        // dataSource = RecipesTableViewDataSource()
        
        self.tableView = UITableView(frame: self.view.bounds, style: .Grouped /*UITableViewStyle.Grouped*/)
        self.tableView?.delegate = self
        self.tableView?.dataSource = self.dataSource
        self.view.addSubview(self.tableView!)
    }

    // MARK: UITableViewDelegate
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 44
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        let detaileViewController = RecipeDetailViewController()
        detaileViewController.recipeIndex = indexPath.row
        
        if let navigationController = self.navigationController {
            navigationController.pushViewController(detaileViewController, animated: true)
        }
        //self.navigationController!.pushViewController(detaileViewController, animated: true)
    }

}
