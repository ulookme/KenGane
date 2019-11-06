//
//  Game.swift
//  KenGane
//
//  Created by ano on 02/11/2019.
//  Copyright © 2019 hajjar. All rights reserved.
//

import Foundation

// acte 2// 3* juste apres la creation d ela classe playeurs on effectue le doage de la classe game en fesant la premier la constante Teamgamer ainsi la la variable player qui est un tableau  ou sont stoker les deux joeur( pour linstant vide / une instance ...
class Game {
    
    private let teamGamer = TeamGamer()
    private var players = [Player]()
    
    
    public func principalMenu () {
        print("""

             --- Menu---
             1. start
             2.Quit Game
""")
      /// 3/4  faire une fonction de presentation du menue avec un choix a l'utilisateur  commencer le jeux ou le quitter
        //suivit du code de line et readline pour permettre au player de pouvoir interagire avec l'interface  suis de switch pour c'est choix porposer .
        if let line = readLine() {
            
            switch line {
            case "1":
                print("start the game ")
            case "2":
                print("you quit game ")
            default:
                print("you must choice 1 or 2")
                principalMenu()
         //3//4//5  apres la fonction on comtunie avec le switch le plus important a retenir et ne pas oublier c'est defaud celle ci nous permet de retourner au menu principale au cas ou la personne effectue un mauvaix chois nota a moi méme.
            }
            
        }
        
    }
    
}

