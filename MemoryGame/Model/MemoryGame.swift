//
//  MemoryGame.swift
//  MemoryGame
//
//  Created by Steve Zhou on 5/20/20.
//  Copyright © 2020 Steve Zhou. All rights reserved.
//

import Foundation
import UIKit

struct MemoryGame<CardContent: Equatable> {
    
    var cards: [Card]
    
    var theme: Theme
//
//    var cardFlipedIndices: [Int] = []
//
//    var removeLastTwoCards = 0
    
    var score: Int
    
    var indexOfTheOneAndOnlyFaceUpCard: Int?{
        get{ cards.indices.filter({cards[$0].isFaceUP }).only }
        
        set{
            for index in cards.indices {
               cards[index].isFaceUP = index == newValue
            }
        }
    }
    
    init(theme: Theme, numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = [Card]()
        
        for pairIndex in 0..<numberOfPairsOfCards {
            
            let content = cardContentFactory(pairIndex)
            cards.append(Card(id: pairIndex * 2, content: content))
            cards.append(Card(id: pairIndex * 2 + 1, content: content))
        }
        cards.shuffle()
       // removeLastTwoCards = cards.count
        self.theme = theme
        score = 0
    }
 
    mutating func choose(card: Card){
    
        if let chosenIndex = cards.firstIndex(matching: card), !cards[chosenIndex].isFaceUP, !cards[chosenIndex].isMatched {
            
            if let potentialMatchIndex = indexOfTheOneAndOnlyFaceUpCard {
                
                if cards[chosenIndex].content == cards[potentialMatchIndex].content {
                    cards[chosenIndex].isMatched = true
                    cards[potentialMatchIndex].isMatched = true
                    score += 2
                }else {
                    
                    if  cards[chosenIndex].isSeen {
                        score -= 1
                    }
                    
                    if cards[potentialMatchIndex].isSeen {
                        score -= 1
                    }
                }
                if !cards[chosenIndex].isSeen {
                   cards[chosenIndex].isSeen = true
                }
                if !cards[potentialMatchIndex].isSeen {
                    cards[potentialMatchIndex].isSeen = true
                }
            
                self.cards[chosenIndex].isFaceUP = true
                
            }else {
                indexOfTheOneAndOnlyFaceUpCard = chosenIndex
            }
        }
        
        
    }
    
  /*
  mutating func choose(card: Card){
  
        if let chosenIndex: Int = cards.firstIndex(matching: card) {
          
          if !cards[chosenIndex].isFaceUP{
     
                    if cardFlipedIndices.count == 2 {
                       
                        if cards[cardFlipedIndices.first!].content == cards[cardFlipedIndices.last!].content {
                             removeLastTwoCards -= 2
                            settingMatchedCardAndFaceup()
                            flipAddTheCard(using: chosenIndex)

                        }else {
                            cards[cardFlipedIndices.first!].isFaceUP = false
                            cards[cardFlipedIndices.last!].isFaceUP = false
                            flipAddTheCard(using: chosenIndex)

                        }
                    }else {
                        cardFlipedIndices.append(chosenIndex)
                        self.cards[chosenIndex].isFaceUP = true
                    }
          
            }else {
                  print("The card you have choosed is already face up")
                    if removeLastTwoCards == 2 {
                        settingMatchedCardAndFaceup()
                    }
            
                }
        }

   }
   */
    
    struct Card: Identifiable  {
        var id: Int
        var isFaceUP: Bool = false
        var isMatched: Bool = false
        var content: CardContent
        var isSeen: Bool = false
    }
    
//
//   mutating private func flipAddTheCard(using index: Int){
//        cardFlipedIndices = []
//        self.cards[index].isFaceUP = true
//        cardFlipedIndices.append(index)
//    }
//   mutating private func settingMatchedCardAndFaceup() {
//        cards[cardFlipedIndices.first!].isMatched = true
//        cards[cardFlipedIndices.last!].isMatched = true
//        cards[cardFlipedIndices.first!].isFaceUP = false
//        cards[cardFlipedIndices.last!].isFaceUP = false
//    }
    
}
