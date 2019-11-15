//
//  Player.swift
//  KenGane
//
//  Created by ano on 02/11/2019.
//  Copyright © 2019 hajjar. All rights reserved.
//

import Foundation
//  acte 2/// 1 * des que les class Charaters player et les sous classe sont fait on commence avec la classe Player pour les joueur
class Player {
    
    var namePlayer : String
    var maxPlayer = 2
    var characters = [Character]()
    init(namePlayer: String) {
        self.namePlayer = namePlayer
        // Acte 2 /// 2 * apres la cleration des proprieter de la classe player ( les variable nom du joueur , le nombre maximun de joueur  et les charactere ou personnage choisi on effection linitialisation de celle ci  avec name playeur en utilisant  le mots clef self pour self.
        // pour ce qui est de charater on utilise un tableau vide en attendant le choix des joueur
        
        
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
    
    
}
