import Foundation

//: # Functions
//: ### Function is a set of code that is used to accomplish some specific task.
// a built in function in swift such as print() that execute code to print value in a console

// ## Basic Function
func printGreetings() {
    print("Hello, Swift")
}

printGreetings()

// Function with parameters
func printPersonalGreeting(name: String) {
    print("Hello, \(name). Welcome to funios bootcamp.")
}

printPersonalGreeting(name: "Le bron")

// Function for division
func divisionDescription(numerator: Double, denominator: Double) {
    print("\(numerator) devided by \(denominator) is \(numerator / denominator)")
}

divisionDescription(numerator: 9.0, denominator: 3.0)

// Using Explicit parameter names
func personalGreeting(to name: String) {
    print("Hello, \(name). Welcome to funios bootcamp.")
}

personalGreeting(to: "Kevin garnett")

// Default parameter value
func division(numerator: Double, denominator: Double, punctuation: String = ".") {
    print("\(numerator) devided by \(denominator) is \(numerator / denominator)\(punctuation)")
}

// Return Function
func divisionReturnFunction(numerator: Double, denominator: Double, punctuation: String = ".") -> String {
    return "\(numerator) devided by \(denominator) is \(numerator / denominator)\(punctuation)"
}

// Nested Function
func areaOfTriangle(base: Double, height: Double) -> Double {
    let rectangle = base * height
    
    func divide() -> Double {
        return rectangle / 2
    }
    
    return divide()
}

// Optional return
func getHaterStatus(weather: String) -> String? {
    if weather == "sunny" {
        return nil
    } else {
        return "Hate"
    }
}

// Early exit with guard statements

func getMiddleName(name: String?) {
    guard let middleName = name else {
        print("Hey there")
        return
    }
    print("Hey, \(middleName)")
}

getMiddleName(name: nil)


//: ## Challenge
//: ### Create a function that have parameter name, and print an error if the name less than 3 character and the name over than 10 characters and using guard statement.

//: ## Closure
//: ### Closures are self-contained blocks of functionality that can be passed around and used in your code.
let volunteerCounts = [1,3,40,32,2,53,77,13]

volunteerCounts.sorted { x, y in
    x < y
}
volunteerCounts.sorted(by: {
    (x: Int, y: Int) -> Bool in
    return x < y
})

let sort = volunteerCounts.sorted(by: { $0 < $1 })
print(sort)

func sort(by: (Int, Int) -> Bool) {
    // Do something
}

func makeSquareOf(digit: Int, completion: (Int) -> Void) {
    let squareDigit = digit * digit
    completion(squareDigit)
}

makeSquareOf(digit: 2) { squareDigit in
    print(squareDigit)
}

// Closure in variable
let rounders: (Double) -> String = { num in
    return "\(Int(num.rounded()))"
}

var callback: ((String) -> Void)?

callback?("Car")
