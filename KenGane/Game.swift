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
    
    private var arrayTeams = [Team]()
    private var players = [Player]()
    private var endlessLoop = true
    private var battleIsEnded = false   // private var endlessLoop = true
   // private var battleIsEnded = false
    
    
    public func principalMenu () {
        var userChoice = 0
          repeat {
            welcom()
            repeat {
              if let data = readLine() {
                if let dataToInt = Int(data) {
                  userChoice = dataToInt
                }
              }
            } while userChoice != 1 && userChoice != 2 && userChoice != 3 && userChoice != 4 && userChoice != 5
            
            switch userChoice {
            case 1: // New game with reset of variables and creation of the teams
              endlessLoop = true
              battleIsEnded = false
             let teamGamer = TeamGamer()
              teamGamer.createPlayers()
              arrayTeams = teamGamer.arrayteams
            case 2: // Show the teams: statistics and equipment for each character.
              listTeam()
            case 3: // Start the battle
              battle()
              endOfBattle()
            case 4: // Show the teams and the winner to the end of game
              resumeGame()
            case 5: // Exit of game
              exitGame()
            default:
              break
            }
            userChoice = 0
          } while endlessLoop
        }
        
    }
    
    private func welcom() {
         print("")
           print("===========================================================================")
           print("@@@@@@@@@@@@  🛡 🛡 🛡  ⚔️  Battle of warriors  ⚔️  🛡 🛡 🛡  @@@@@@@@@@@@")
           print("===========================================================================")
           print("What action to do ? - Choose a number between 1 and 5 :")
           print("---------------------------------------------------------------------------")
           print("1. 🆕 New Game : Creation of the teams. ")
           print("2. 🛡 Show the teams created : statistics and equipment for each character.")
           print("3. ⚔️ Start the battle ! ")
           print("4. 🚩 Show the teams and the winner to the end of game.")
           print("5. ➡︎ Exit of Game ")
           print("===========================================================================")
        
}
    
    private func listTeam() { // a verifier en cas de doublon dajout de team
        let teamlist = [Team]()
        if teamlist.count == 0{
            print("sorry no team waz created !")
        }else{
            for i in 0..<teamlist.count {
                print("====================")
                print("List of the team \(i+1) :")
                print("--------------------")
                let team = teamlist[i]
                team.displayTeam()
                
            }
        }
            
        
}
      // Play to the game - Players perform the following action loop:
    // 1. Choose a character from your team
    // 2. Choose a character of the opposing team to attack or a character of its own team to care for in the case of the Wizard.
    // The program will then carry out the attack (or heal) and tell the players what just happened.


       private func battle(){
        let teamlist = [Team]()
        let battleIsEnded = Bool()
        if teamlist.count == 0{
            print("⛔️ Sorry no team was created !")
            
        }else if battleIsEnded == true {
            print(" ")
            print("🚩The game is ended ! Please to select a new game.")
            
        }else{
           displayStartFight()
          //  var myCharacter: Character
          //  repeat{
           //     for nbTeam in 0..<teamlist.count{
                    
                }
          //  }
            
            
        }
//}
    
   private func displayStartFight() {
        print("==================================")
        print("@@@ ⚔️ The battle starts ! ⚔️ @@@")
        
        }
    
    private func choiceMyCharacter(Nbteam : Int){
        print("==================================")
        print("Turn of player \( Nbteam + 1) - Team \(Nbteam + 1) :")
        print("==================================")
        //let team =
       // team.displayTeam
        print("====================================================")
        print("Player \(Nbteam+1) : What characters you choose to fight ? ⚔️")
        print("----------------------------------------------------")
        
}
    
    private func userChoice() -> Int{
         var characterChoice = 0
           repeat {
             if let data = readLine() {
               if let dataToInt = Int(data) {
                 characterChoice = dataToInt
               }
             }
           } while characterChoice != 1 && characterChoice != 2 && characterChoice != 3
           return characterChoice
        
    }
    
    // display that the chosen character is already dead and can no longer attack
    private func displayCharacterIsDead(myCharacter: Character) {
      print("-------------------------------------------------------------------------------------")
      print("Sorry the \(myCharacter.name)\" is already dead and cannot attack !!! ❌")
      print("-------------------------------------------------------------------------------------")
    }
    
    
    private func displayWinner(){
        
    }
    
    private func resumeGame(){
        
    }
    
    private func endOfBattle(){
        
    }
    
    private func exitGame(){
        
    }
    
    
    
    
    

    


