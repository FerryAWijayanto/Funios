import Foundation
import UIKit
/*:
 # Variable, Constant and Data Types
 */


//: ## Constants
//: ### constant is a variable who have a fixed value that cannot be change
let freezingTemperatureOfWaterCelsius = 0
let speedOfLightKmSec = 300_000

//: ## Variables
//: ### variable can be updated or changed
var currentTemperature = 22
var currentSpeed = 55

//: ## Type safety
//: ### Swift is a type-safe language, which means we are required to define the types of the values we are going to store in a variable. We will get an error if we attempt to assign a value to a variable that is of the wrong type
//: ## There is two way to declare variable type
//: ### Implicit
var greetings = "Hallo, swift"
var x = 3.14
var y = true
//: ### Explicit
var explicitFloat: Float = 3.14
var string: String = ""
var stringOptional: CGFloat = 0.0
//: ## Data Type
//let integer: Int
//let double: Double
//let string: String
//let character: Character
//let boolean: Bool
//let float: Float
//: ## Double vs Float
//: ### Float represent 32bit min -2,147,483,648, max 2,147,483,648
//: ### Double represent 64bit min -9,223,372,036,854,775,808, max 9,223,372,036,854,775,808
let lessPrecisePI = Float("3.14")
let morePrecisePI = Double("3.1415926536")

//: ## Comments
// Single line comments

/*
 Multiline Comments
 */

//MARK: - This is a MARK
/// mark ini untuk menandai function apa
//: ## Concatenating string
let firstName = "John"
let lastName = "Wick"

let fullName = firstName + lastName

let stringInterpolation = "\(firstName) \(lastName)"
let fullName1 = "\(firstName) \(lastName)"

//: ## Challenge - String Concatenating or Interpolation
//: ### Create a variable that represent town name and the number of population and how many stoplight to get there


//: ## Math Operator
let addition = 21 + 21
let substract = 10 - 9
let divide = 12 / 2
let multiply = 4 * 2
let divide2 = Double(multiply) / 3
let reminder = 10 % 3
//: ## Increment and Decrement
var count = 0

// Option 1
count = count + 1
count = count - 1

// Option 2
count += 1
count -= 1

//: ## Comparison Operators
let firstValue = 1
let secondValue = 2

// Checking is greater than
firstValue > secondValue

// Checking is less than
firstValue < secondValue

// Checking is greater than or equal to
firstValue >= secondValue

// Checking is less than or equal to
firstValue <= secondValue

// Checking for equal
firstValue == secondValue

// Checking for not equal
firstValue != secondValue


//: ## Type casting
let num1 = 5
let num2 = 4
let sum = Double(num1 / num2)

let ten = "10"
let castingStringToInt = Int(ten)
print(castingStringToInt)
