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
       
       init(name: String, weapon:Weapon, maxlife: UInt16, life: Int16 ) {
           self.name = name
           self.weapon = weapon
           self.maxLife = maxlife
           self.life = life
        
    }
        
}
