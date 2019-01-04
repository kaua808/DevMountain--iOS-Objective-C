//: Playground - noun: a place where people can play

import Cocoa

// A for-in loop

//var myFirstInt: Int = 0
//
//for i in 1...5 {
//    ++myFirstInt
//    print(myFirstInt)
//}

// * printing the changing value of i to the console

//var myFirstInt: Int = 0
//
//for i in 1...5 {
//    ++myFirstInt
//    print("myFirstInt equals \(myFirstInt) at iteration \(i)")
//}

// * replacing i with _

//var myFirstInt: Int = 0
//
//for _ in 1...5 {
//    ++myFirstInt
//    print(myFirstInt)
//}

// * for-in loop with a case

//for case let i in 1...100 where i % 3 == 0 {
//    print(i)
//}

// * A classic for loop

//var myFirstInt: Int = 0
//
//for var i = 1; i < 6; ++i {
//    ++myFirstInt
//    print(myFirstInt)
//}

// * A while loop

var myFirstInt: Int = 0

var i = 1

while i < 6 {
    ++myFirstInt
    print(myFirstInt)
    ++i
}

// * Using continue // * Using break

var shields = 5
var blastersOverheating = false
var blasterfireCount = 0
var spaceDemonsDestroyed = 0
while shields > 0 {
    
    if spaceDemonsDestroyed == 500 {
        print("You beat the game!")
        break
    }
    
    if blastersOverheating {
        print("blasters are overheated! cooldown initiated.")
        sleep(5)
        print("blasters ready yo fire")
        sleep(1)
        blastersOverheating = false
        blasterfireCount = 0
    }
    
    if blasterfireCount > 100 {
        blastersOverheating = true
        continue
    }
    
    // Fire blasters!
    print("Fire blasters!")
    ++blasterfireCount
    ++spaceDemonsDestroyed
    
}

// * Bronze challenge

var count = 0

for var i = 1; i < 101; ++i {
    count += 2
    print(count)
}




