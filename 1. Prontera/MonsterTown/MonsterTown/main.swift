//
//  main.swift
//  MonsterTown
//
//  Created by Ferry Adi Wijayanto on 03/07/22.
//

import Foundation


// MARK: Struct
/// “A struct is a type that groups a set of related chunks of data together in memory.
/// You use structs when you would like to group data together under a common type.”


// Struct is a “value types”, where each instance keeps a unique copy of its data
var myTown = Town()
myTown.population = 10_000

var secondTown = Town()
secondTown.population = 5_000

print("Population: \(myTown.population)")
print("Population: \(secondTown.population)")

myTown.printDescription()

let genericMonster = Monster()
genericMonster.town = myTown
genericMonster.terorizeTown()

let fredTheZombie = Zombie()
fredTheZombie.town = myTown
fredTheZombie.terorizeTown()
fredTheZombie.town?.printDescription()
fredTheZombie.walkWithLimps = true



// MARK: - Bronze Challenge
// “There is currently a bug in the program.
// If a Zombie terrorizes a Town with a population less than 10, then the town's population will become negative.
// This result does not make sense.
// Fix this bug by changing the changePopulation(by:) method on Town to never have a negative population.
// That is, make sure that a town’s population is set to 0 if the amount to decrement is greater than the current population.”

// MARK: - Silver Challenge
// “Create another subclass of the Monster type.
// Call this one Vampire.
// Give it a thralls property to hold an empty array of other Vampire instances.”
// In this vampire new class override the terorizeTown()
// When a vampire attack a townspeople make them into a vampire tharlls, it like a disease make a human turned into a vampire
// Every person being capture by the vampire decrement the town population by one.

















// Example of computed property
struct Rectangle {
    var width: Double
    var height: Double
    
    var area: Double {
        width * height
    }
}

// Property observers observe and respond to changes in a property’s value.
struct PropertyObserver {
    var stored: String {
        // The willSet observer runs before the new value is stored
        willSet {
            print("willSet was called")
            print("stored is now equal to \(self.stored)")
            print("stored will be set to \(newValue)")
        }

        // the didSet observer runs after
        didSet {
            print("didSet was called")
            print("stored is now equal to \(self.stored)")
            print("stored was previously set to \(oldValue)")
        }
    }
}

var observer = PropertyObserver(stored: "First")
observer.stored = "Second"
