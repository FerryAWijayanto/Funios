//
//  Zombie.swift
//  MonsterTown
//
//  Created by Ferry Adi Wijayanto on 04/07/22.
//

import Foundation

/*
 “One of the main features of classes that structures and enumerations do not have is inheritance.
 Inheritance is a relationship in which one class, a subclass, is defined in terms of another, a superclass.
 The subclass inherits the properties and methods of its superclass”
 */

class Zombie: Monster {
    var walkWithLimps = true
    
    // “Overriding a method means that a subclass provides its own definition of a method that is defined on its superclass”
    override func terorizeTown() {
        town?.changePopulation(by: -10)
        
        // super is a prefix used to access a superclass implementation of a method.
        // In this case, you use super to call the Monster class’s implementation of terrorizeTown()
        super.terorizeTown()
    }
}
