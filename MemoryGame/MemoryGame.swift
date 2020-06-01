//
//  MemoryGame.swift
//  MemoryGame
//
//  Created by Steve Zhou on 5/20/20.
//  Copyright © 2020 Steve Zhou. All rights reserved.
//

import Foundation

struct MemoryGame<CardContent: Equatable> {
    
    var cards: [Card]
    
    var cardFlipedIndices: [Int] = []
    
    var removeLastTwoCards = 0
    
    var indexOfTheOneAndOnlyFaceUpCard: Int?{
        get{ cards.indices.filter({cards[$0].isFaceUP }).only }
        
        set{
            for index in cards.indices {
               cards[index].isFaceUP = index == newValue
            }
        }
    }
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = [Card]()
        
        for pairIndex in 0..<numberOfPairsOfCards {
            
            let content = cardContentFactory(pairIndex)
            cards.append(Card(id: pairIndex * 2, content: content))
            cards.append(Card(id: pairIndex * 2 + 1, content: content))
        }
        cards.shuffle()
        removeLastTwoCards = cards.count
    }
 /*
    mutating func choose(card: Card){
       
        if let chosenIndex = cards.firstIndex(matching: card){
            print("I choosed index : \(chosenIndex) and another index: \(indexOfTheOneAndOnlyFaceUpCard)")
            
            if !cards[chosenIndex].isFaceUP{
                print("Card is not face up: \(cards[chosenIndex].isFaceUP)")
                
                        if !cards[chosenIndex].isMatched {
                            print("card is not matched up :\(cards[chosenIndex].isMatched)")
                            
                                    if let potentialMatchIndex = indexOfTheOneAndOnlyFaceUpCard {
                                        print("The potenail match index: \(potentialMatchIndex)")
                                                if cards[chosenIndex].content == cards[potentialMatchIndex].content {
                                                    cards[chosenIndex].isMatched = true
                                                    cards[potentialMatchIndex].isMatched = true
                                                    print("There is a match!")
                                                }
                                                indexOfTheOneAndOnlyFaceUpCard = nil
                                                print("There's no match and setting one and only to nil")

                                    }else {
                                                for index in cards.indices {
                                                     cards[index].isFaceUP = false
                                                    print("set \(index) card to face up to false ")
                                                 }
                                                 indexOfTheOneAndOnlyFaceUpCard = chosenIndex
                                                 print("***********else One and Only : \(indexOfTheOneAndOnlyFaceUpCard)")
                                   }
                            
                           self.cards[chosenIndex].isFaceUP = true
                            print("Card is faced up: \(cards[chosenIndex].isFaceUP)")
                            
                      }else {
                            print("The card you have choosed is matched")
                       }
                
            }else {
                print("The card you have choosed is already face up")
            }
        } // end of first IF statement
    
    }// end of function
    */
  
    mutating func choose(card: Card){
    
        if let chosenIndex = cards.firstIndex(matching: card),
            !cards[chosenIndex].isFaceUP,
            !cards[chosenIndex].isMatched {
            
            if let potentialMatchIndex = indexOfTheOneAndOnlyFaceUpCard {
                
                if cards[chosenIndex].content == cards[potentialMatchIndex].content {
                    cards[chosenIndex].isMatched = true
                    cards[potentialMatchIndex].isMatched = true
                }
//                indexOfTheOneAndOnlyFaceUpCard = nil
                 self.cards[chosenIndex].isFaceUP = true
            }else {
                
//                for index in cards.indices {
//                    cards[index].isFaceUP = false
//                }
                indexOfTheOneAndOnlyFaceUpCard = chosenIndex
            }
//            self.cards[chosenIndex].isFaceUP = true
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
    }
    
    
   mutating private func flipAddTheCard(using index: Int){
        cardFlipedIndices = []
        self.cards[index].isFaceUP = true
        cardFlipedIndices.append(index)
    }
   mutating private func settingMatchedCardAndFaceup() {
        cards[cardFlipedIndices.first!].isMatched = true
        cards[cardFlipedIndices.last!].isMatched = true
        cards[cardFlipedIndices.first!].isFaceUP = false
        cards[cardFlipedIndices.last!].isFaceUP = false
    }
    
}
