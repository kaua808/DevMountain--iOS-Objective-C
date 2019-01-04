//: Playground - noun: a place where people can play

import Cocoa

// * Hello, playground

let playground = "Hello, playground"

// * creating a mutable string

var mutablePlayground = "Hello, mutable playground"

// * Adding a mutable string

mutablePlayground += "!"

// * mutablePlayground's Characters

for c: Character in mutablePlayground.characters {
    print("\(c)")
}

// * Using a unicode scalar

let onCoolDude = "\u{1F60E}"

// * Using a combining scalar

let aAcute = "\u{0061}\u{0301}"

// * Revealing the Unicode scalars behind a string

for scalar in playground.unicodeScalars {
    print("\(scalar.value)")
}

// * Using a precomposed character

let aAcutePrecomposed = "\u{00E1}"

// * Checking equivalence

let b = (aAcute == aAcutePrecomposed) // true

// * Counting characters

print("aAcute: \(aAcute.characters.count); aAcuteDecomposed: \(aAcutePrecomposed.characters.count)")

// * Finding the fifth character 

let fromStart = playground.startIndex
let toPosition = 4 // The first position is 0
let end = fromStart.advancedBy(toPosition)
let fifthCharacter = playground[end] // 'o'

// * Pulling out a range

let range = fromStart...end
let firstFive = playground[range] // 'Hello'


