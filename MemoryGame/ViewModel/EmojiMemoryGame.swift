//
//  EmojiMemoryGame.swift
//  MemoryGame
//
//  Created by Steve Zhou on 5/20/20.
//  Copyright © 2020 Steve Zhou. All rights reserved.
//

import SwiftUI


class EmojiMemoryGame: ObservableObject {
    
   @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
   
    static private let themes = Themes.shared.generatingThemes()
    
    
    var color: UIColor {
        model.theme.themeColor
    }
    
    var themeName: String {
        model.theme.themeName
    }
    
    var score: Int {
        model.score
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
       return MemoryGame(theme: theme, numberOfPairsOfCards: theme.numberOfShowingCards) { emojiIndex in
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
    
    
    func newGame(){
        model = EmojiMemoryGame.createMemoryGame()
    }
}
