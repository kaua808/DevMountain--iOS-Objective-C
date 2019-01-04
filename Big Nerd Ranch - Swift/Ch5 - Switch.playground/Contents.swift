//: Playground - noun: a place where people can play

import Cocoa

// * Your first switch

//var statusCode: Int = 404
//var errorString: String
//
//switch statusCode {
//case 400:
//    errorString = "Bad rewuest"
//
//case 401:
//    errorString = "Unauthorized"
//    
//case 403:
//    errorString = "Forbidden"
//    
//case 404:
//    errorString = "Not found"
//    
//default:
//    errorString = "None"
//}

// * Switch cases can have multiple values

//var statusCode: Int = 404
//var errorString: String =  "The request failed with the error:"
//
//switch statusCode {
//case 400, 401, 403, 404:
//    errorString = "There was something wrong with the request"
//    
//    fallthrough
//default:
//    errorString += "Please review the request and try again"
//}

// * Switch cases can have single values, multiple values, or ranges of values

//var statusCode: Int = 404
//var errorString: String = "The request failed with the error:"
//
//switch statusCode {
//case 100, 101:
//    errorString += " informational, 1xx."
//case 204:
//    errorString += " Successful but no content, 204."
//case 300...307:
//    errorString += " redirection, 3xx."
//case 400...417:
//    errorString += " Client error, 4xx."
//case 500...505:
//    errorString += " Server error, 5xx."
//
//default:
//    errorString = "Unknown. Please review the request and try again."
//}

// * Using value binding

//var statusCode: Int = 417
//var errorString: String = "The request failed with the error:"
//
//switch statusCode {
//case 100, 101:
//    errorString += " Informational, \(statusCode)."
//case 204:
//    errorString += " Successful but no content, 204."
//case 300...307:
//    errorString += " redirection, \(statusCode)."
//case 400...417:
//    errorString += " Client error, \(statusCode)."
//case 500...505:
//    errorString += " Server error, \(statusCode)."
//
//default:
//    errorString = "\(statusCode) is not a known error code."
//case let unknownCode:
//    errorString = "\(unknownCode) is not a known error code."
//}

// * Using where to create a filter

var statusCode: Int = 418
var errorString: String = "The request failed with the error:"

switch statusCode {
case 100, 101:
    errorString += " Informational, \(statusCode)."
case 204:
    errorString += " Successful but no content, 204."
case 300...307:
    errorString += " redirection, \(statusCode)."
case 400...417:
    errorString += " Client error, \(statusCode)."
case 500...505:
    errorString += " Server error, \(statusCode)."

case let unknownCode where (unknownCode >= 200 && unknownCode < 300) || unknownCode > 505:
    errorString = "\(unknownCode) is not a known error."
    
default:
    errorString = "Unexpected error encountered."
    
}

// *Creating a tuple 

//let error = (statusCode, errorString)

// *Accessing the elements of a tuple

//error.0
//error.1

// * Naming tuple elements

let error = (code: statusCode, error: errorString)
error.code
error.error

// * Pattern matching in tuples

let firstErrorCode = 404
let secondErrorCode = 200
let errorCodes = (firstErrorCode, secondErrorCode)

switch errorCodes {
case (404, 404):
        print("no items found.")
case (404, _):
    print("First item not found.")
case (_, 404):
    print("Second item not found.")
default:
    print("All items found")
}

// * Single case switch

//let age = 25
//switch age {
//case 18...35:
//    print("cool demographic")
//default:
//    break
//}

// * if-case

//let age = 25
//
//if case 18...35 = age {
//    print("Cool demographic")
//}

// * if-cases with where clauses

let age = 21

if case 18...35 = age where age >= 21 {
    print("In cool demographic and of drinking age")
}

// Bronze Challenge

let point = (x: 1, y: 4)

switch point {
case let q1 where (point.x > 0) && (point.y > 0):
    print("\(q1) is in quadrant 1")
default:
    print("case not covered")
}





















