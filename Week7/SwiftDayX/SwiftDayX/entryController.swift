//
//  entryController.swift
//  SwiftDayX
//
//  Created by Kaleo Kim on 6/16/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

import UIKit
import CoreData

class entryController: NSObject {
    
    let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    
    static let sharedInstance = entryController ()
    
    var entries:[Entry] {
        get {
            
            return appDelegate.managedObjectContext?.executeFetchRequest(NSFetchRequest(entityName: "Entry"), error: nil) as! [Entry]
            
        }
    }
    
    func createEntryWithDetails(title:String, text:String) -> Entry {
        
        let entry = NSEntityDescription.insertNewObjectForEntityForName("Entry", inManagedObjectContext: appDelegate.managedObjectContext!) as! Entry
        
        entry.title = title
        entry.text = text
        
        self.save()
        
        return entry
    }
   
    func save() {
        appDelegate.managedObjectContext?.save(nil)
    }
    
}
