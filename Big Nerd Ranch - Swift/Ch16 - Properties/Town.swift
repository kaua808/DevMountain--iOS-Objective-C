//
//  File.swift
//  Ch15 - Structs and Classes
//
//  Created by Kaleo Kim on 1/31/16.
//  Copyright © 2016 Kaleo Kim. All rights reserved.
//

import Foundation

struct Town {
    let region = "South"
    var population = 5422 {
        didSet(oldPopulation) {
            print("Population changed to \(population) from \(oldPopulation).")
        }
    }
    
    var numberOfStoplights = 4
    
    enum Size {
        case Small
        case Medium
        case Large
    }
    
    var townSize: Size {
        get {
            switch self.population {
            case 0...10000:
                return Size.Small
            case 10001...100000:
                return Size.Medium
            default:
                return Size.Large
            }
        }
    }
    func printTownDescription() {
        print("Population: \(myTown.population), number of stoplights: \(myTown.numberOfStoplights)")
    }
    
    mutating func changePopulation(amount: Int) {
        population += amount
    }
}