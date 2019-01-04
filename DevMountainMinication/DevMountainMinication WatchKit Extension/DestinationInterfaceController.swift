//
//  DestinationInterfaceController.swift
//  DevMountainMinication
//
//  Created by Kaleo Kim on 5/8/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

import WatchKit
import Foundation


class DestinationInterfaceController: WKInterfaceController {

    @IBOutlet weak var myMomsTable: WKInterfaceTable!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        self.myMomsTable.setNumberOfRows(50, withRowType: "RollTideRow")
        
        for rowIndex in 1...40 {
            var myRow = self.myMomsTable.rowControllerAtIndex(rowIndex) as! RollTideRow
            myRow.Roll.setText("this is row \(rowIndex)");
        }
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
