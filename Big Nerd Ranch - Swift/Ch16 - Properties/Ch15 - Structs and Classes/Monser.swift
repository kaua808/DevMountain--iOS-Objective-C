//
//  Monser.swift
//  Ch15 - Structs and Classes
//
//  Created by Kaleo Kim on 1/31/16.
//  Copyright © 2016 Kaleo Kim. All rights reserved.
//

import Foundation

class Monster {
    var town: Town?
    var name = "Monster"
    var victimPool: Int {
        get {
            return town?.population ?? 0
        }
        set(newVictimPool) {
            town?.population = newVictimPool
        }
    }
    
    func terrorizeTown() {
        if town != nil {
            print("\(name) is terrorizing a town!")
        } else {
            print("\(name) hasnt found a town to terrorize yet...")
        }
    }
}