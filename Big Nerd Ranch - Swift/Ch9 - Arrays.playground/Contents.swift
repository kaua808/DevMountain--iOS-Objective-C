//: Playground - noun: a place where people can play

import Cocoa

// * Creating an array

//var bucketList: Array<String>

// * Changing the syntax

//var bucketList: [String]

// * Initializing the array

//var bucketList: [String] = ["Climb Mt. Everest"]

// * Using type inference

var bucketList = ["Climb Mt. Everest"]

// * Appending

bucketList.append("Fly hot air balloon to fiji")
bucketList.append("Watch Lord of the Rings")
bucketList.append("Go walk")
bucketList.append("find life")

// * Removing an item from the array

bucketList.removeAtIndex(2)


// * Counting items in the array 

print(bucketList.count)

// * Subscripting to find your top three items

print(bucketList[0...2])

// * Using subscriptin to append new information

bucketList[2] += " in Australia"


// * Replacing an array item

bucketList[0] = "climb Mt. Kilimanjaro"
bucketList

// * Using a loop to append items from one array to another

var myList = ["watch star wars"]

var newItems = [
                "buy a speeder",
                "hire a bounty hunter",
                "pay back Jabba",
                "Get pod ready for Bunta Eve classic",
                "Buy a new droid"
                ]

//for item in newItems {
//    myList.append(item)
//}

myList

// * Refactoring with the addition and assignment operator

myList += newItems

// * Insert a new item

myList.insert("buy more deathsticks", atIndex: 2)

// * checking two arrays for equality 

let equal = (myList == bucketList)

// * immutable array 

let noChange = ["eat", "sleep", "play"]





