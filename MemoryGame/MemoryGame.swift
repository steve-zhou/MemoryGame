//
//  MemoryGame.swift
//  MemoryGame
//
//  Created by Steve Zhou on 5/20/20.
//  Copyright © 2020 Steve Zhou. All rights reserved.
//

import Foundation

struct MemoryGame<CardContent> {
    
    var cards: [Card]
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = [Card]()
        
        for pairIndex in 0..<numberOfPairsOfCards {
            
            let content = cardContentFactory(pairIndex)
            cards.append(Card(id: pairIndex * 2, content: content))
            cards.append(Card(id: pairIndex * 2 + 1, content: content))
        }
        cards.shuffle()
    }
    
  mutating func choose(card: Card){
        print("Card Chosen: \(card)")
        let chosenIndex: Int = self.index(of: card)
        self.cards[chosenIndex].isFaceUP = !self.cards[chosenIndex].isFaceUP
    }
    
    func index(of card: Card) -> Int {
        for index in 0..<cards.count {
            if self.cards[index].id == card.id {
                return index
            }
        }
        return 0
    }
    
    
    struct Card: Identifiable  {
        var id: Int
        var isFaceUP: Bool = true
        var isMatched: Bool = false
        var content: CardContent
    }
}
