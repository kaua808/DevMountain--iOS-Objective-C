//: Playground - noun: a place where people can play

import Cocoa

func printGreeting() {
    print("Hello, playground.")
}

printGreeting()

func personalGreeting(name: String) {
    print("Hello \(name), welcome to the playground")
}

personalGreeting("Kaleo")

func printPersonalGreetings(names: String...) {
    for name in names {
        print("Hello \(name), welcome to the playground.")
    }
}
printPersonalGreetings("Kaleo", "Ann", "Aaron")

var error = "The request faild:"
func appendErrorCode(code: Int, inout toErrorString errorString: String) {
    if code == 400 {
        errorSring += " bad request."
    }
}
appendErrorCode(400, toErrorString: &error)
error