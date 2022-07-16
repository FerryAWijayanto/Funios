//
//  Monster.swift
//  MonsterTown
//
//  Created by Ferry Adi Wijayanto on 04/07/22.
//

import Foundation

// Class is a reference type

// class must have an initializer if property doesn't have a value
//class MonsterTwo {
//    var name: String
//    var phoneNumber: Int
//}


class Monster {
    var spookNoise: String {
        // Computed Property is one that runs some code in order to calculate the value
        return "Grrr"
    }
    
    var town: Town?
    var name = "Monster"
    
    func terorizeTown() {
        if town != nil {
            print("\(name) is terorizing a town")
        } else {
            print("\(name) hasn't found a town to terorizing yet...")
        }
    }
}
