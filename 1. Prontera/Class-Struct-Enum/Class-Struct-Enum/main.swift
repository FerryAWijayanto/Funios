//
//  main.swift
//  Class-Struct-Enum
//
//  Created by Ferry Adi Wijayanto on 03/07/22.
//

import Foundation

// MARK: - Enum
/// In Swift, an enum (short for enumeration) is a user-defined data type that has a fixed set of related values

// Basic Enum
enum TextAlignment {
    case left
    case right
    case center
}

// Initialize enum
var alignment: TextAlignment = .right
var alignmentTwo = TextAlignment.right

// Type enum when comparing a value
if alignment == .left {
    print("The text alignment goes to left")
}

// Using switch
switch alignment {
    case .left:
        print("Left aligned")
    case .right:
        print("Right aligned")
    case .center:
        print("Center aligned")
}

switch alignment {
    case .left:
        print("Left aligned")
    case .right:
        print("Right aligned")
    default:
        print("Center aligned")
}

// Enum with raw value
enum TxtAlignment: Int {
    case left
    case right
    case center
    case justify
}

let alignmentRawValue: TxtAlignment = .center
print(alignmentRawValue.rawValue)

// Specifying raw value
enum TxtAlignmentTwo: Int {
    case left = 20
    case right = 30
    case center = 40
    case justify = 50
}

let txtAlignmentRawValue: TxtAlignmentTwo = .center
print(txtAlignmentRawValue.rawValue)

enum ProgrammingLanguage: String {
    case swift = "swift"
    case objectiveC = "objective-c"
    case c = "c"
    case cpp = "cpp"
    case java = "java"
}

let favProgrammingLang: ProgrammingLanguage = .swift

print(favProgrammingLang.rawValue)

// Methods
/// Methods is a function that is associated with types
enum LightBulb {
    case on
    case off
    
    func surfaceTemperature(forAmbientTemperature ambient: Double) -> Double {
        switch self {
        case .on:
            return ambient + 150.0
        case .off:
            return ambient
        }
    }
}

var bulb: LightBulb = .on
let ambientTemperature = 77.0

var bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature: ambientTemperature)

print("the bulb temperature is \(bulbTemperature)")

// Enum Associate value
enum ShapeDimension {
    case square(side: Double)
    case rectangle(width: Double, height: Double)
    
    func area() -> Double {
        switch self {
        case let .square(side):
            return side * side
        case let .rectangle(width, height):
            return width * height
        }
    }
}

var squareShape: ShapeDimension = .square(side: 10.0)
var rectShape = ShapeDimension.rectangle(width: 5.0, height: 10.0)


print("square area = \(squareShape.area())")
print("rectangle area = \(rectShape.area())")
