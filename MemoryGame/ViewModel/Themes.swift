//
//  Themes.swift
//  MemoryGame
//
//  Created by Steve Zhou on 6/1/20.
//  Copyright © 2020 Steve Zhou. All rights reserved.
//

import UIKit


class Themes {
    
    static let shared = Themes()
    
    private init(){}
    
    func generatingThemes() -> [Theme] {
        
    return [Theme(name: "Animals", emojiSet: [0x1F435, 0x1F412, 0x1F98D, 0x1F9A7, 0x1F436, 0x1F415, 0x1F429, 0x1F43A, 0x1F98A, 0x1F405, 0x1F40E, 0x1F418, 0x1F98F, 0x1F99B, 0x1F994], showingCards: 3, color: UIColor(red: 142 / 255, green: 193 / 255, blue: 77 / 255, alpha: 1)),
             Theme(name: "Unhappy", emojiSet: [0x1F637, 0x1F912, 0x1F915, 0x1F922, 0x1F92E, 0x1F927, 0x1F975, 0x1F976, 0x1F974, 0x1F92F], showingCards: 4, color: UIColor(red: 254 / 255, green: 175 / 255, blue: 37 / 255, alpha: 1)),
             Theme(name: "Flowers", emojiSet: [0x1F490, 0x1F338, 0x1F4AE, 0x1F3F5, 0x1F339, 0x1F33A,0x1F33C, 0x1F337], showingCards: 4, color: UIColor(red: 252 / 255, green: 120 / 255, blue: 90 / 255, alpha: 1)),
             Theme(name: "Vegetables", emojiSet: [0x1F951, 0x1F346, 0x1F954, 0x1F955, 0x1F33D, 0x1F336, 0x1F952, 0x1F96C, 0x1F966, 0x1F9C4, 0x1F9C5, 0x1F344, 0x1F330], showingCards: 3, color: UIColor.systemPurple),
             Theme(name: "Cars", emojiSet: [0x1F695, 0x1F696, 0x1F697, 0x1F698, 0x1F699, 0x1F69A, 0x1F69B, 0x1F69C, 0x1F3CE, 0x1F3CD, 0x1F6F5, 0x1F6FA, 0x1F6B2, 0x1F6F9,0x1F6F4], showingCards: 4, color: UIColor(red: 93 / 255, green: 65 / 255, blue: 87 / 255, alpha: 1)),
             Theme(name: "Sweet Food", emojiSet: [0x1F366, 0x1F367, 0x1F368, 0x1F369, 0x1F36A, 0x1F382, 0x1F370, 0x1F9C1, 0x1F967, 0x1F36B, 0x1F36c, 0x1F36D, 0x1F36E, 0x1F36F], showingCards: 3, color: UIColor(red: 2 / 255, green: 157 / 255, blue: 226 / 255, alpha: 1))
        ]
    }
}
