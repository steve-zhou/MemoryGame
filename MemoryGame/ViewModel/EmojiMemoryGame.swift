//
//  EmojiMemoryGame.swift
//  MemoryGame
//
//  Created by Steve Zhou on 5/20/20.
//  Copyright © 2020 Steve Zhou. All rights reserved.
//

import SwiftUI


class EmojiMemoryGame: ObservableObject {
    
   @Published  var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
   
  static private let themes = Themes.shared.generatingThemes()
    
    
    var color: UIColor {
        model.color
    }
    
    var themeName: String {
        model.name
    }
    
    var newGame: MemoryGame<String> {
        model
    }
    //MARK: - Access to the Model
    var cards: [MemoryGame<String>.Card] {
        return model.cards
    }
    
    //MARK: - Intent(s)
    func choose(card: MemoryGame<String>.Card){
     
        model.choose(card: card)
    }
    
    //MARK: - Build Memory Game
    static func createMemoryGame() -> MemoryGame<String> {
        
        let theme = themes.randomElement()!
        let emojis = generateRandomEmojiSet(emoji: theme.emojisForTheme, pairOfCards: theme.numberOfShowingCards)

        print("Number of emojis: \(emojis.count)")
        
       return MemoryGame(name: theme.themeName, color: theme.themeColor, numberOfPairsOfCards: theme.numberOfShowingCards) { emojiIndex in
            return emojis[emojiIndex]
        }
        
    }
    
    //MARK: - Random Emoji Set
    static func generateRandomEmojiSet(emoji range: [Int], pairOfCards: Int) -> [String] {
        var emojiSet = [String]()
         let emojiRange = range
    
        for _ in 1...pairOfCards{
            guard let element = emojiRange.randomElement(),
                let scalar = UnicodeScalar(element) else {
                    return []
            }
            emojiSet.append(String(scalar))
        }
        return emojiSet
    }
}
