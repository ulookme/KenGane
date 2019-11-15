//
//  TeamGamer.swift
//  KenGane
//
//  Created by ano on 02/11/2019.
//  Copyright © 2019 hajjar. All rights reserved.
//

import Foundation

// Acte 2//5 lors de la creation du teameGamer on effectue la creation des variable
// var players au pluriels qui designe le tableaus des deux joueur
// maxplayer qui designe le nombre de joueur autoriser
// charatername permet le choix de nommé les personnage proposer
// le var playerNames permet de cré de stacer le nom des joueur dans un tableau
// les teameMembers personne de staker touts les personnage choisie et renommer par le joueur dans ce tableau
//tout ceci ne se fait que apartir de lacte 2//4
class TeamGamer {
    
    var arrayteams = [Team]()
    var players = [Player]()
    //    creation de la variable player qui represente un tableau de celle-ci pour les joueur
    let maxPlayers : Int8 = 2 // le nombre max de joueurs
    let maxCharacter : Int8 = 3  //(le nombre max de heros)
    var characterNames : [ String] = []
    var playerNames : [ String] = []
    var teamMembers = [Character]()
    //6** on cree les differente fonction de la classe pour un joueur et touts les joueurs au pluriel bien evidament// on cree dabor le charactere dabor pour cree plusieur characters
    
    func createPlayer() -> Player? { // acte 2// 10*** pour cette fonction on resort createplayer -> ver la class player en obtionnel avec (?)
       let player = Player(namePlayer: uniquePlayerName())//  on crée la variable player qui est ratacher a la classe Player toujours et on le nome// 14** on chamger et rajouter uniqueplayername( si on rejoue le code on pourra ajouter le nom des joueur.
        guard let characters = createCharacters() else { return nil }// on tuilise guarde pour que la condition du characters // tant que le tableau de character est egale a la fuction create character la codition sapplique sinon nil
        player.characters = characters
        return player
    }
    
    func createPlayers() { // la fonction createPlayer ne retourne rien elle permet juste de avoir un nombre exacte de player choiie en gros 2
    
        for i in 0..<maxPlayers {
            print("creation player Number : \(i + 1)")
            guard let player = createPlayer() else { return  }
            players.append(player)
        }
        
    }
    
    func createCharacter() -> Character? { // creation de la premiere fonction dans teamgamer
        
        var userChoice = 0 // user choice au depart egale a zero
        
        print("""

        Choose a character between :
        1. Paladin: 100 ♡/ sword: 40 ⚔️
        2. Assassin: 100 ♡/ Dagger: 70 ⚔️
        3. Witcher: 60 ♡/ Scepter: 50 ⚔️
        4. OnepunchMan: 100 ♡/ GlotesPunch: 70 ⚔️
        """)
        // creation de la menu pour le choix d'un personnage ou character
        repeat { // on utilise le bouche repeat pour que le payer puisse choisir parmis les personnage proposer .
            
            if let data = readLine() { // si date egale a readline
                if let dataToInt = Int(data) { // donc  le choise se fait parmis les numero proposer
                    userChoice = dataToInt // le choix de lutilisateur et le nombre qu'il aura choisi pour le character
                }
            }
        } while userChoice != 1 && userChoice != 2 && userChoice != 3 && userChoice != 4   // cette code signifie tout simplement tant que les userchoice ou le choix de l'operateur n'est pas egale a 1, 2, 3 ? 4 ou 5 repeter le code jusqua ce que touts les choix soit accomplie
        
        switch userChoice { // on utilise swithce encore une fois pour permettre a l'uilisateur de faire ces choix de personnage ce qui est tres simple a utiliser
        case 1:
            return Paladin(name: uniqueCharacterName()) // 12 **$ on remodifier les non a mentent la fontion de unique caracters name a la place pour permetre au characters d'avoir leur propore non
            
        case 2:
            return Assassin(name: uniqueCharacterName())//12 ""
        case 3:
            return Witcher(name: uniqueCharacterName())// 12 ""
        case 4:
            return OnePunchMan(name: uniqueCharacterName())//12 ""
            
        default:
            return nil // si les choix n'est pas fait on retourne nil 
            
            
        }
    }
    
    
    func createCharacters() -> [Character]? { //9// create character returne uen tableau de character
        var characters = [Character]()// on cree toujour la variable qui est relier au class Character
        for i in 0..<maxCharacter { // on utilise un bouble for in vue que le nombre de chois des personneg ou du character a ajouter au tableau est de trois
            print("character number : \(i + 1)") // on effectuer un prite on le signaler sur la console  avec ajouter du plus 1 de celle ci
            guard let character = createCharacter() else {
                print("choose number")
                return nil // on utilise guard let de character egale a createCharacter on voie sa comme unt condition de blocage temps que celle ci nest pas valable il va sortir de la fonction
            }
            characters.append(character) // on utilise Characters . append pour ajouter les autre personnage en gros append (character sans S) Ps a moi méme
        }
        return characters  // le retour de la fonction
        
    }
    
    private func uniqueCharacterName() -> String {//11// fonction uniquecharacterName
        print("enter character name : ")
        var characterName = "" // on cree une variable de cele ci en string ouver
        repeat { // on utilise repate while
            if let data = readLine(){
                characterName = data
                if characterNames.contains(characterName){ // on fait une condition qui permetde verifier si le nom du caracter et deja dans le tableau Characternames si oui elle refait la demande
                    print("this character name is already taken")
                    characterName = ""
                } else {
                    characterNames.append(characterName) // si le tableau charactersNames ne le contien pour on affection characterNames. appeend pour l'ajout de celle ci
                }
                                
            }
        } while characterName == "" // le bouche repeat while ne s'arrete que quand le non a téte ajouter
            return characterName
    }
    
    private func uniquePlayerName() -> String { // 13 // la fonction uniquplayername se code exactement de la meme manier  que unique charactersname //
        print("enter player name : ")
        var playerName = ""
        repeat {
            if let data = readLine() {
            playerName = data
                if playerNames.contains(playerName){
                    print("this player name is already taken")
                    playerName = ""
                    
                }else{
                    playerNames.append(playerName)
                }
              
        }

            
    } while playerName == ""
        return playerName
    
}
    func chowMaxCharacter () {
    print("""
        
        ⭐️⭐️⭐️⭐️ \(uniqueCharacterName()),sont les joueur selectionné pour cette partie  \(players) ⭐️⭐️⭐️⭐️
        
        
        
        """)
    }
}
