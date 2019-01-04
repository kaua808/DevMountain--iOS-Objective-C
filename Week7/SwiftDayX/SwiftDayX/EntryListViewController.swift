//
//  EntryListViewController.swift
//  SwiftDayX
//
//  Created by Kaleo Kim on 6/16/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

import UIKit

class EntryListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "showEntry" {
            let cell = sender as! UITableViewCell
            
            let indexPath = self.tableView.indexPathForCell(cell)
            
            let detailViewController = segue.destinationViewController as! DetailViewController
            
            detailViewController.entry = entryController.sharedInstance.entries[indexPath!.row]
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
