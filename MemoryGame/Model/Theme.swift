//
//  Theme.swift
//  MemoryGame
//
//  Created by Steve Zhou on 6/1/20.
//  Copyright © 2020 Steve Zhou. All rights reserved.
//


import UIKit


struct Theme: Identifiable {
   
    
    let id: Int
    let themeName: String
    let emojisForTheme: [String]
    let numberOfShowingCards: Int
    let themeColor: UIColor
    
    init(name: String, emojiSet: [String], showingCards: Int = 1, color: UIColor, id: Int) {
         themeName = name
        emojisForTheme = emojiSet
        numberOfShowingCards = showingCards
        themeColor = color
        self.id = id 
    }
    
}
