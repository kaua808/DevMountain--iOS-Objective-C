//: Playground - noun: a place where people can play

import Cocoa

//var errorCodeString: String?
//errorCodeString = "404"

// * Logging the value of the optional to the console

//print(errorCodeString)

// * Adding a condition

//if errorCodeString != nil {
//    let theError = errorCodeString!
//    print(theError)
//}


// * Optional binding 

//var errorCodeString: String?
//errorCodeString = "404"
//
//if let theError = errorCodeString {
//    print(theError)
//}

// * Nesting optional binding

//var errorCodeString: String?
//errorCodeString = "404"
//
//if let theError = errorCodeString {
//    if let errorCodeInteger = Int(theError) {
//        print("\(theError): \(errorCodeInteger)")
//    }
//}

// * Unwrapping multiple optionals

var errorCodeString: String?
errorCodeString = "404"

if let theError = errorCodeString, errorCodeInteger = Int(theError) {
        print("\(theError): \(errorCodeInteger)")
}






