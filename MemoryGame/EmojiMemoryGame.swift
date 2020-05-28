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
        let emojis = generateRandomEmojiSet()
        print("Number of emojis: \(emojis.count)")
       return MemoryGame(numberOfPairsOfCards: Int.random(in: 2...5)) { emojiIndex in
            return emojis[emojiIndex]
        }
    }
    
    //MARK: - Random Emoji Set
    static func generateRandomEmojiSet() -> [String] {
        var emojiSet = [String]()
        let emojiRange = Array(0x1F300...0x1F3F0)
        
        for _ in 1...5{
            guard let element = emojiRange.randomElement(),
                let scalar = UnicodeScalar(element) else {
                    return []
            }
            emojiSet.append(String(scalar))
        }
        return emojiSet
    }
}
