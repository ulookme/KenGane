//
//  Weapon.swift
//  KenGane
//
//  Created by ano on 02/11/2019.
//  Copyright © 2019 hajjar. All rights reserved.
//

import Foundation


class Weapon  {
    var damage :Int16
    var weaponName : String
    init(weaponName : String, damage: Int16){
        self.damage = damage
        self.weaponName = weaponName
        
    }
    
}
