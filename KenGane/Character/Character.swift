//
//  Character.swift
//  KenGane
//
//  Created by ano on 02/11/2019.
//  Copyright © 2019 hajjar. All rights reserved.
//

import Foundation

class Character {
     let name: String
       var weapon: Weapon
       var maxLife: UInt16
       var life : Int16
       var isBloked = Bool()
    init(name: String, weapon:Weapon, maxlife: UInt16, life: Int16, isBloked: Bool ) {
           self.name = name
           self.weapon = weapon
           self.maxLife = maxlife
           self.life = life
           self.isBloked = isBloked
    }
    private func receive(damage: Int16) {
        //16// If life is negative, the life of the character is set to 0        self.life -= damage
        if self.life <= 0 {
            self.life = 0
        }
    }
    
    func attack(character: Character) {
        if life > 0 {
            if character.life > 0 {
                character.receive(damage: weapon.damage)
                
                 print("-----------------------------------------------------------------------------------------------------")
                print("🛡 The \"\(character.name)\" received \(weapon.damage) points of damage by the \(weapon.weaponName) of your \(name)\" ! 🛡")
                       print("-----------------------------------------------------------------------------------------------------")
                
                 if character.life <= 0 {
                         print("❌ The\(character.name)\" is dead !!! ❌")
                       }
                     } else {
                       print("--------------------------------------------------------")
                       print("The\(character.name)\" is already dead ! ❌")
                       print("--------------------------------------------------------")
                     }
                   } else {
                     print("---------------------------------------------------------------------------------------")
                     print("Sorry the \(name)\" is already dead and cannot attack the \(character.name)\" ! ❌")
                     print("---------------------------------------------------------------------------------------")
                   }
                 }
                
                
            // Display the description of our character on the screen
              func display(index: Int) {
                print(" ")
                print("\(index) - \(name)\" - Points of life : \(life) - Weapon : \(weapon.weaponName) - Points of damage : \(weapon.damage)")
              }
}  // END Class Character

        
    

