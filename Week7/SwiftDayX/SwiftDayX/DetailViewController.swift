//
//  DetailViewController.swift
//  SwiftDayX
//
//  Created by Kaleo Kim on 6/16/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var titleTextField: UITextField!
    
    @IBOutlet weak var entryTextView: UITextView!
    
    var entry: Entry?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if let entry = self.entry {
            self.updateWithEntry(entry)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateWithEntry(entry: Entry) {
        self.titleTextField.text = entry.title
        self.entryTextView.text = entry.text
    }
    
    @IBAction func saveButtonTapped(sender: AnyObject) {
        
        if let entry = self.entry {
            entry.title = self.titleTextField.text
            entry.text = self.entryTextView.text
            
            entryController.sharedInstance.save()
        } else {
            entryController.sharedInstance.createEntryWithDetails(titleTextField.text, text: entryTextView.text)
        }
        
        self.navigationController?.popViewControllerAnimated(true)
    }

    @IBAction func clearButtonTapped(sender: AnyObject) {
        titleTextField.text = ""
        entryTextView.text = ""
        
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
