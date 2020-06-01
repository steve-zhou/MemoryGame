//
//  Theme.swift
//  MemoryGame
//
//  Created by Steve Zhou on 6/1/20.
//  Copyright © 2020 Steve Zhou. All rights reserved.
//


import UIKit


struct Theme {
    
    let themeName: String
    let emojisForTheme: [Int]
    let numberOfShowingCards: Int
    let themeColor: UIColor
    
    init(name: String, emojiSet: [Int], showingCards: Int = 1, color: UIColor) {
         themeName = name
        emojisForTheme = emojiSet
        numberOfShowingCards = showingCards
        themeColor = color
    }
    
}
