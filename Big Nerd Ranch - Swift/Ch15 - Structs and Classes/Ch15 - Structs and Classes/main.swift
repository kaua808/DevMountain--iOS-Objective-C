//
//  main.swift
//  Ch15 - Structs and Classes
//
//  Created by Kaleo Kim on 1/31/16.
//  Copyright © 2016 Kaleo Kim. All rights reserved.
//

import Foundation

var myTown = Town()

myTown.changePopulation(500)

let fredTheZombie = Zombie()
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printTownDescription()

