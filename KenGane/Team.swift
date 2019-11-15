//
//  Team.swift
//  KenGane
//
//  Created by ano on 07/11/2019.
//  Copyright © 2019 hajjar. All rights reserved.
//

import Foundation
class Team {

  //MARK: - Vars
  var characters = [Character]()

  // MARK: - Methodes
  // display of list of the teams
  func displayTeam() {
    for i in 0..<characters.count {
      let character = characters[i]
      if character.life <= 0 {
        print(" ")
        print("\(i+1) - The\(character.name)\" is dead ❌ !")
        print(" ")
      } else {
        character.display(index: i+1)
        if character.isBloked == true {
          print("@@@@ ⭕️🥶 The\(character.name)\" is freezed !!! 🥶⭕️ @@@@")
        }
      }
    }
  }
  
  // function returns true if the character is dead
  func isDead() -> Bool {
    var isDead = false
    for character in characters {
      if character.life <= 0 {
        isDead = true
      } else { //false
        isDead = false
        return isDead
      }
    }
    return isDead
  }
} // END class Team
