//
//  File.swift
//  Ch15 - Structs and Classes
//
//  Created by Kaleo Kim on 1/31/16.
//  Copyright © 2016 Kaleo Kim. All rights reserved.
//

import Foundation

struct Town {
    var population = 5422
    var numberOfStoplights = 4
    
    func printTownDescription() {
        print("Population: \(myTown.population), number of stoplights: \(myTown.numberOfStoplights)")
    }
    
    mutating func changePopulation(amount: Int) {
        population += amount
    }
}