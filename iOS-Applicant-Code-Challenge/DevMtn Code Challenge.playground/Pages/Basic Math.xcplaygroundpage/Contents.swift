/*:
## Basic Math

Demonstrate basic knowledge of functions that take parameters and return results by implementing some basic math functions.
*/
//: Write a function that returns the sum of two numbers

func sum(num1: Int, num2: Int) -> Int {
    return num1 + num2
}

//: Write a function that returns the product of two numbers

func product(num1: Int, num2: Int) -> Int {
    return num1 * num2
}

//: Write a function that returns the average (mean) of an array of numbers

var votes:[Double] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

func average(nums: [Double]) -> Double {
    
    var total = 0.0
    for vote in nums{
        
        total += Double(vote)
        
    }
    
    let votesTotal = Double(nums.count)
    let average = total/votesTotal
    return average
}


//: Demo the use of your functions here:

sum(3, num2: 2)
product(2, num2: 2)
var theAverage = average(votes)
//: [Previous](@previous)
//: [Next](@next)
