import Foundation

//: # Conditional
let population: Int = 5000

let message: String

if population < 10_000 {
    message = "\(population) is a small town!"
} else {
    message = "\(population) is pretty big!"
}

print(message)

//: ## Logical Operator
//: ### && Logical AND, true if and only if both true (false otherwise)
//: ### || Logical OR, true if either is true (false only if both is false)
//: ### ! Logical NOT, evaluate whether a condition is false

let hasPostOffice = true
let hasPoliceStation = false

if !hasPostOffice {
    print("Where do you buy stamp?")
}

if hasPostOffice == true && hasPoliceStation == false {
    print("They have a police station and post office")
}

//: ## Ternary Operator
var messageTwo = ""
messageTwo = population < 10000 ? "\(population) is a small town" : "\(population) is pretty big!"

print(messageTwo)
10000000000
10_000_000
if population < 10_000 {
    messageTwo = "\(population) is a small town"
} else if population >= 10_000 && population < 50_000 {
    messageTwo = "\(population) is a medium town"
} else {
    "\(population) is pretty big!"
}

//: ## Challenge
//: ### Add additional else if statement to the town-sizing code to see if your town's population is very large. Choose your own population threshold

//: ## Switch statement
var statusCode: Int = 200
var errorString = ""

enum Toggle {
    case on
    case off
}

let toggle: Toggle = .on

switch toggle {
case .on:
    break
case .off:
    break
}

switch statusCode {
case 401:
    errorString = "Unauthorized"
case 403:
    errorString = "Forbidden"
case 404:
    errorString = "Not Found"
default:
    errorString = "None"
}

// Switch with Range

var errorMessage = "The request failed with error.bv "

switch statusCode {
case 401:
    errorMessage += "Unauthorized"
case 400...417:
    errorMessage += "Client error, 4xx."
case 500...505:
    errorMessage += "Server error, 5xx."
default:
    errorMessage = "Unknown status. Please review the request and try again"
}

// Alternate
let newStatusCode = 13
switch newStatusCode {
case 401:
    errorMessage += "Unauthorized"
case 400...417:
    errorMessage += "Client error, \(newStatusCode)."
case 500...505:
    errorMessage += "Server error, \(newStatusCode)."
case let code where code < 100 || code > 600:
    errorMessage = "\(code) is an illegal status code."
default:
    errorMessage = "Unexpected error encounterd."
}

//: Tuples and pattern matching
let error = (statusCode, errorMessage)
error.0
error.1

let errorRelateName = (err: statusCode, msg: errorMessage)
errorRelateName.err
errorRelateName.msg

let firstErrorCode = 404
let secondErrorCode = 418
let errorCode = (firstErrorCode, secondErrorCode)

switch errorCode {
case (404, 404):
    print("Both error codes were 404")
case (404, _):
    print("Only the first code is 404, and we don't care about the second code")
case (_, 404):
    print("Only the Second code is 404, and we don't care about the first code")
default:
    print("Neither codes were 404")
}

// If you want to use switch case to get range but only have one condition and don't want to use default case
let age = 23

if case 18...40 = age {
    print("Cool demographic")
}

let newAge = 25

if case 18...35 = newAge, newAge >= 25 {
    print("I'm in a cool demographic and can rent a car")
}

let optionalInt: Int? = 0
let optionalDouble: Double? = 0.0
if let optional = optionalInt, let double = optionalDouble {

}

//: ## Challenge
//: ### Review the switch statement below, What will be logged to the console?
let point = (x: 1, y: 4)

switch point {
case let q1 where (point.x > 0) && (point.y > 0):
    print("\(q1) is quadrant 1")
case let q2 where (point.x < 0) && (point.y > 0):
    print("\(q2) is quadrant 2")
case let q3 where (point.x < 0) && (point.y < 0):
    print("\(q3) is quadrant 3")
case let q4 where (point.x > 0) && (point.y < 0):
    print("\(q4) is quadrant 4")
case (_, 0):
    print("\(point) sits on the x-axis")
case (0,_):
    print("\(point) sits on the y-axis")
default:
    print("Case not covered")
}

