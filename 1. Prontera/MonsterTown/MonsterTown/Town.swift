//
//  Town.swift
//  MonsterTown
//
//  Created by Ferry Adi Wijayanto on 03/07/22.
//

import Foundation

// Struct with initializer
struct TownTwo {
    // Adding property
    var population: Int
    var numberOfStopLight: Int
}

// Struct without default value
struct Town {
    // Adding property
    var population = 5422
    var numberOfStopLight = 4
    
    func printDescription() {
        print("Population: \(population); Number of stoplights: \(numberOfStopLight)")
    }
    
    // In struct if you want to change value of the struct property, it must be mark as mutating
    /// The mutating method defined inside your struct wants permission to modify each and every instance of itself that will ever be created in the future.
    mutating func changePopulation(by amount: Int) {
        population += amount
    }
}
