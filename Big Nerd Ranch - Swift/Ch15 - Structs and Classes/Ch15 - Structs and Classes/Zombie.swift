//
//  Zombie.swift
//  Ch15 - Structs and Classes
//
//  Created by Kaleo Kim on 1/31/16.
//  Copyright © 2016 Kaleo Kim. All rights reserved.
//

import Foundation

class Zombie: Monster {
    var walkWithLimp = true
    
    final override func terrorizeTown() {
        town?.changePopulation(-10)
        super.terrorizeTown()
    }
}