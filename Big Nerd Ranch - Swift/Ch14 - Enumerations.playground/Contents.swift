//: Playground - noun: a place where people can play

import Cocoa

// * Defining an enumeration

enum TextAlignment {
    case Left
    case Right
    case Center
    case Justify
}

var alignment = TextAlignment.Justify

switch alignment {
case .Left:
    print("Left")
case .Right:
    print("Right")
case .Center:
    print("Center")
case .Justify:
    print("Justify")
}

enum Lightbulb {
    case On
    case Off

    func surfaceTempforAmbientTemp(ambient: Double) -> Double {
        switch self {
        case .On:
            return ambient + 150.0
        
        case .Off:
            return ambient
        }
    }
}

var bulb = Lightbulb.On
let ambientTemp = 77.0

var bulbTemp = bulb.surfaceTempforAmbientTemp(ambientTemp)
print("the bulbs temp is \(bulbTemp)")

enum ShapeDimensions {
    case Point
    case Square(Double)
    case Rectangle(width: Double, height: Double)
    
    func area() -> Double {
        switch self {
        case .Point:
            return 0
            
        case let . Square(side):
            return side * side
            
        case let .Rectangle(width: w, height: h):
            return w * h
        }
    }
}

var squareShape = ShapeDimensions.Square(10.0)
var rectShape = ShapeDimensions.Rectangle(width: 5.0, height: 10.0)

