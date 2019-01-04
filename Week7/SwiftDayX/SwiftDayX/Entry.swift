//
//  Entry.swift
//  SwiftDayX
//
//  Created by Kaleo Kim on 6/16/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

import Foundation
import CoreData

@objc(Entry)

class Entry: NSManagedObject {

    @NSManaged var text: String
    @NSManaged var title: String

}
