import Foundation


//: # Collections

//: ## Array

// Creating Array
var bucketLists1 = Array<String>()
var bucketLists2: [String] = []
var bucketLists3 = [String]()

// Initialize an array

bucketLists1 = ["Climb Mt. Everest"]
var bucketLists4 = ["Climb Mt. Everest"]

// Accessing and Modifying array
bucketLists4.append("Read War and Peace")


// Counting items in the array
bucketLists4.count
bucketLists4.remove(at: 1)

// Subscripting
bucketLists4[0]

// Replacing item in array
bucketLists4[0] = "Read 10 books in a week"

// Inserting item in array
bucketLists4.insert("Go to mecca", at: 1)

// Adding Array with loop
let newItems = ["Workout 3 times a week", "Eat Healthy Food", "Go to bromo", "Go to amazing place in bandung"]

for item in newItems {
    bucketLists4.append(item)
}

// Adding new item with operator
bucketLists4 += newItems

// Checking two array equality
bucketLists4 == newItems


//: ## Challenge
//: ### Use a documentation to find a property defined on the array whether toDoList contains any element
var toDoList = ["Take out the trash", "Pay bills", "Crossoff finish items"]


//: ## Silver Challenge
//: ### Use loop to reverse the order of the elements of this array



//: ### Then Examine the Array Documentation to see whether there is a convinent way to do this operation


//: ### Finally use the Array documentation to find an easy way to rearrange the items in toDoList into a random order.


//: ## Optionals

var errorCodeString = Optional("404")
var error404String: String?
error404String = "404"

// Optional Binding or Unwrap optional

if let errorString = error404String {
    print(errorString)
}


// Unrwapping multiple optionals
if let errorString = error404String, let errCodeString = errorCodeString {
    print(errorString)
    print(errCodeString)
}

// Optional binding and addtional checks
if
    let errorString = error404String,
    let errorCodeInt = Int(errorString),
    errorCodeInt == 404 {
    print("\(errorString): \(errorCodeInt)")
}

// Optional Chaining
var errorDescription: String?

if
    let errorString = error404String,
    let errorCodeInt = Int(errorString),
    errorCodeInt == 404 {
    errorDescription = "\(errorCodeInt + 200): resource not found"
}

var upperCaseErrorDescription = errorDescription?.uppercased()

// Nil Coalescing Operator
let error200String: String? = "200"
let description = errorDescription ?? "No error. 604: resource not found."

let errDesc = error200String ?? ""


//: ## Challenge
//: ### Which type would model them the best
// A person age: Int or Int?
// A person middle name: String or String?
// A person kids names: [String] or [String]? or [String?]


//: ## Dictionary

var dict1: Dictionary = Dictionary<String, Int>()
var dict2: [String: Int] = [:]
var dict3 = [String: Int]()

// Dict initialization
var companyZIP: [String: Int] = ["Apple": 1976]
var appleZIP = ["Apple": 1976]

// Creating Dict
var movieRatings = ["Tron": 4, "The Dark Knight": 5, "Shawshank Redemption": 5]

// Counting items in the dict
movieRatings.count

// Reading value from dict
let tronRating = movieRatings["Tron"]
let premierRating = movieRatings["Premier"]

// Modifying Dict
movieRatings["Tron"] = 2

let oldRating: Int? = movieRatings.updateValue(5, forKey: "Tron")

if let lastRating = oldRating, let currentRating = movieRatings["Tron"] {
    print("old rating \(lastRating)")
    print("current rating \(currentRating)")
}

// Adding value
movieRatings["John Wick"] = 5

// removing value
let removeRating = movieRatings.removeValue(forKey: "Tron")

// Looping dict
for (key, value) in movieRatings {
    print("The Movie \(key) was rated \(value)")
}

// Accessing just the key
for movie in movieRatings.keys {
    print("User has rated \(movie)")
}

// Translating dictionary into an array
let watchedMovie = Array(movieRatings.keys)

//: ## Challenge
//: ### Create a dictionary that represent a league of sports teams. Each of dictionary key will be the name of the team, and each value is will be an array of the names of five players on that team.
//: ### Log only the player names in single long line. Example: The NBA have the following player: ["Kevin Garnet", "Larry Bird", "Frank Ramsey"] etc.



//: ## Optional Gold Challenge

//: ### Create output of each team with formatting that look like this

// Boston Celtic Players:
// Kevin Garnet
// Larry Bird
// Derrick White

// LA Lakers Players:
// Le Bron James
// Carmelo Anthony
// Anthony Davis


//: ## Sets
var groceryList = Set<String>(["Apples", "Oranges"])

// Adding Set
groceryList.insert("Kiwi")
groceryList.insert("Pears")

// Looping through Set
for food in groceryList {
    print(food)
}

// Removing an element from a set
groceryList.remove("Pears")

let bananas = groceryList.contains("Bananas")
