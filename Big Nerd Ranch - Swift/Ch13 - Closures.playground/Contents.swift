//: Playground - noun: a place where people can play

import Cocoa

// * Starting with an array

var volunteerCounts = [1, 3, 40 ,32 ,2, 53, 77, 13]

//func sortAscending(i: Int, j: Int) -> Bool {
//    return i < j
//}
//
//let volunteersSorted = volunteerCounts.sort(sortAscending)

// * Refactoring your sorting code

//let volunteersSorted = volunteerCounts.sort({
//    (i: Int, j: Int) -> Bool in
//    return i < j
//})

// * Taking advantage of type inference 

//let volunteersSorted = volunteerCounts.sort({ i, j in i < j })

// * Using shorthand syntax for arguments

//let volunteersSorted = volunteerCounts.sort({ $0 < $1 })

// * Inline closures as the function's final argument

let volunteersSorted = volunteerCounts.sort { $0 < $1 }

// * Return to Knowhere

//func makeTownGrand() -> (Int, Int) -> Int {
//    func buildRoads(lightsToAdd: Int, toLights: Int) -> Int {
//        return toLights + lightsToAdd
//    }
//    return buildRoads
//}

// * The roads to Knowhere

//var stoplights = 4
//let townPlan = makeTownGrand()
//stoplights = townPlan(4, stoplights)
//print("Knowhere has \(stoplights) stoplights")

// * Add budget constrictions

func makeTownGrand(budget: Int, condition: Int -> Bool) -> ((Int, Int) -> Int)? {
    if condition(budget) {
        func buildRoads(lightsToAdd: Int, toLights: Int) -> Int {
            return toLights + lightsToAdd
        }
        return buildRoads
    } else {
        return nil
    }
}

func evaluateBudget(budget: Int) -> Bool {
    return budget > 10000
}

var stoplights = 4

if let townPlan = makeTownGrand(1000, condition: evaluateBudget) {
    stoplights = townPlan(4, stoplights)
}

//print("Knowhere has \(stoplights) stoplights")

// * Buiding more roads 

if let newtownPlan = makeTownGrand(10500, condition: evaluateBudget) {
    stoplights = newtownPlan(4, stoplights)
}

print("Knowhere has \(stoplights) stoplights")

// * Tracking growth

func makeGrowthTracker(forGrowth growth: Int) -> () -> Int {
    var totalGrowth = 0
    func growthTracker() -> Int {
        totalGrowth += growth
        return totalGrowth
    }
    return growthTracker
}

var currentPopulation = 5422
let growBy500 = makeGrowthTracker(forGrowth: 500)

// * Population is booming

growBy500()
growBy500()
growBy500()
growBy500()
currentPopulation += growBy500()

// * Duplicate growth

let anotherGrowBy500 = growBy500
anotherGrowBy500()

// * Another population to track 

var someOtherPopulation = 4061981
let growby10000 = makeGrowthTracker(forGrowth: 10000)
someOtherPopulation += growby10000()
currentPopulation

// * Map

let precinctPopulation = [1244, 2021, 2157]

// * Using map to estimate population

let projectedPopulations = precinctPopulation.map {
    (population: Int) -> Int in
    return population * 2
}
projectedPopulations

// * reduce

let totalProjection = projectedPopulations.reduce(0) {
    (accumulatedProjection: Int, precinctProjection: Int) -> Int in
    return accumulatedProjection + precinctProjection
}
totalProjection































