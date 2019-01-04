//: Playground - noun: a place where people can play

import Cocoa

// *Maximum and minimum value for Int

print("The maximum Int value is \(Int.max).")
print("The minimum Int value is \(Int.min).")

// *Maximum and minimum value for Int32

print("The maximum value for a 32-bit integer is \(Int32.max).")
print("The minimum value for a 32-bit integer is \(Int32.min).")

// *Maximum and minimum value for unsigned integers

print("The maximum UInt value is \(UInt.max).")
print("The minimum UInt value is \(UInt.min).")

print("The maximum value for a 32-bit unsigned integer is \(UInt32.max).")
print("The minimum value foe a 32-bit unsigned integer is \(UInt32.min).")

// *Declaring Int ecplicitly and implicitly

let numberOfPages: Int = 10 // declares the type explicitly
let numberOfchapters = 3 // Also of type Int, but inferred by the comiler 

// *Declaring other integer types explicitly

let numberOfPeople: UInt = 40
let volumeAdjustment: Int32 = -1000

// *Performing basic operations

print(10 + 20)
print(30 - 5)
print(5 * 6)

// *Order of operations

print(10 + 2 * 5) // 20, because 2 *5 is evaluated first
print(30 - 5 - 5) // 20, because 30 - 5 is evaluated first

// *Parentheses are your friends

print((10 + 2) * 5) // 60, because (10 + 2) is now evaluated first
print(30 - (5 - 5)) // 30, because (5 - 5) is now evaluated first

// *Integer division can give unexpected results

print(11 / 3) // rounds down to the nearest whole

// *Remainders

print(11 % 3)

// *Incrementing and decrementing
var x = 10
x++
print("x has been incremented to \(x)")
x--
print("x has been decremented to \(x)")

// *Combing addition and assignment

x += 10 // is equivlent to: x = x + 10
print("x has had 10 added to it and is now \(x)")

// *Using and overflow operator

let y: Int8 = 120
let z = y &+ 10
print("120 &+ 10 is \(z)")

// *Adding values of different types

let a: Int16 = 200
let b: Int8 = 50
//let c = a + b // uh oh!

// *Converting type to allow addition

let c = a + Int16(b)

// *Declaring floating-point number types

let d1 = 1.1 // implicitly Double
let d2: Double = 1.1
let f1: Float = 100.3

// *Operations on floating-point numbers

print(10.0 + 11.4)
print(11.0 / 3.0)
print(12.4 % 5.0)

// *Comparing two floating-point numbers 

if d1 == d2 {
    print("d1 and d2 are the same!")
}

print("d1 + 0.1 is \(d1 + 0.1)")
if d1 + 0.1 == 1.2 {
    print("d1 + o.1 is equal to 1.2")
}



















