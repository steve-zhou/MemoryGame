//
//  Themes.swift
//  MemoryGame
//
//  Created by Steve Zhou on 6/1/20.
//  Copyright © 2020 Steve Zhou. All rights reserved.
//

import UIKit


class Themes {
    
  static let shared = Themes().generatingThemes()
    
    private init() {}
  
    func generatingThemes() -> [Theme] {
        
        return [
            
            Theme(name: "Animals", emojiSet: generateSingleEmoji([0x1F435, 0x1F412, 0x1F98D, 0x1F9A7, 0x1F436, 0x1F415, 0x1F429, 0x1F43A, 0x1F98A, 0x1F405, 0x1F40E, 0x1F418, 0x1F98F, 0x1F99B, 0x1F994], numberOfPairs: 8), showingCards: 8, color: UIColor.zero, id: 0),
            
            Theme(name: "Unhappy", emojiSet: generateSingleEmoji([0x1F637, 0x1F912, 0x1F915, 0x1F922, 0x1F92E, 0x1F927, 0x1F975, 0x1F976, 0x1F974, 0x1F92F], numberOfPairs: 8), showingCards: 8, color: UIColor.one, id: 1),
    
             Theme(name: "Flowers", emojiSet: generateSingleEmoji([0x1F490, 0x1F338, 0x1F4AE, 0x1F3F5, 0x1F339, 0x1F33A,0x1F33C, 0x1F337], numberOfPairs: 8), showingCards: 8, color: UIColor.two, id: 2),
             
             
             Theme(name: "Vegetables", emojiSet: generateSingleEmoji([0x1F951, 0x1F346, 0x1F954, 0x1F955, 0x1F33D, 0x1F336, 0x1F952, 0x1F96C, 0x1F966, 0x1F9C4, 0x1F9C5, 0x1F344, 0x1F330], numberOfPairs: 8), showingCards: 8, color: UIColor.systemPurple, id: 3),
             
             Theme(name: "Cars", emojiSet: generateSingleEmoji([0x1F695, 0x1F696, 0x1F697, 0x1F698, 0x1F699, 0x1F69A, 0x1F69B, 0x1F69C, 0x1F3CE, 0x1F3CD, 0x1F6F5, 0x1F6FA, 0x1F6B2, 0x1F6F9,0x1F6F4], numberOfPairs: 8), showingCards: 8, color: UIColor.four, id: 4),
             
             Theme(name: "Sweet Food", emojiSet: generateSingleEmoji([0x1F366, 0x1F367, 0x1F368, 0x1F369, 0x1F36A, 0x1F382, 0x1F370, 0x1F9C1, 0x1F967, 0x1F36B, 0x1F36c, 0x1F36D, 0x1F36E, 0x1F36F], numberOfPairs: 8), showingCards: 8, color: UIColor.five,id: 5),
             
            Theme(name: "Mix Emojis", emojiSet: generateSingleEmoji(Array(0x1F417...0x1F429), numberOfPairs: 8), showingCards: 8, color: UIColor.systemTeal,id: 6),
            Theme(name: "Real World", emojiSet: generateSingleEmoji(Array(0x1F3D4...0x1F3DF), numberOfPairs: 8), showingCards: 8, color: UIColor.systemGreen, id: 7),
            Theme(name: "Creatures", emojiSet: generateSingleEmoji(Array(0x1F985...0x1F991), numberOfPairs: 8), showingCards: 8, color: UIColor.systemPink, id: 8),
            
            Theme(name: "Hearts", emojiSet:generateSingleEmoji( [0x1F48C, 0x1F498, 0x1F49D, 0x1F496, 0x1F497, 0x1F493, 0x1F49E, 0x1F495, 0x1F49F, 0x2764, 0x1F9E1,0x1F49B, 0x1F49A, 0x1F499, 0x1F49C ], numberOfPairs: 8), showingCards: 8, color: UIColor.red, id: 9),
            
            Theme(name: "Face Costume", emojiSet: generateSingleEmoji([0x1F4A9, 0x1F921, 0x1F479, 0x1F47A, 0x1F47B, 0x1F47D, 0x1F47E, 0x1F916, 0x1F608, 0x1F47F, 0x1F480, 0x2620], numberOfPairs: 8), showingCards: 8, color: UIColor.brown, id: 10),
            
            Theme(name: "Sports", emojiSet: generateSingleEmoji([0x1F93A, 0x1F3C7, 0x26F7, 0x1F3C2, 0x1F3CC, 0x1F3C4, 0x1F6A3, 0x1F3CA, 0x26F9, 0x1F3CB, 0x1F6B4, 0x1F6B5, 0x1F938, 0x1F93C, 0x1F93D, 0x1F939, 0x1F9D8], numberOfPairs: 8), showingCards: 8, color: UIColor.systemTeal, id: 11),
            
            Theme(name: "Transportation", emojiSet: generateSingleEmoji([0x1F682, 0x1F683, 0x1F685, 0x1F686, 0x1F687, 0x1F688, 0x1F689, 0x1F68A, 0x1F69D, 0x1F69E, 0x1F68B, 0x1F68C, 0x1F68D,0x1F68E, 0x1F690, 0x1F691, 0x1F692, 0x1F693, 0x1F694], numberOfPairs: 8), showingCards: 8, color: UIColor.systemBlue, id: 12),
            
            Theme(name: "Events", emojiSet: generateSingleEmoji([0x1F383, 0x1F384, 0x1F386, 0x1F387, 0x1F9E8, 0x1F388, 0x1F389, 0x1F38A, 0x1F38B, 0x1F38D, 0x1F38E, 0x1F38F, 0x1F390, 0x1F391, 0x1F9E7, 0x1F380, 0x1F381, 0x1F397, 0x1F39F], numberOfPairs: 9), showingCards: 9, color: UIColor.orange, id: 13),
            
            Theme(name: "Fruits", emojiSet: generateSingleEmoji([0x1F347, 0x1F348, 0x1F349,0x1F34A, 0x1F34B, 0x1F34C, 0x1F34D,0x1F96D, 0x1F34E, 0x1F34F, 0x1F350, 0x1F351, 0x1F352, 0x1F353, 0x1FAD0, 0x1F95D, 0x1F345, 0x1FAD2, 0x1F965], numberOfPairs: 10), showingCards: 10, color: UIColor.orange, id: 14),
            
            Theme(name: "Flags", emojiSet: generateDoubleEmoji(numbers: [(0x1F1E6,0x1F1E8 ), (0x1F1E6, 0x1F1E9),
            (0x1F1E6, 0x1F1EA), (0x1F1E6, 0x1F1EB), (0x1F1E6, 0x1F1EC), (0x1F1E6, 0x1F1EE), (0x1F1E6, 0x1F1F1),
            (0x1F1E6, 0x1F1F2), (0x1F1E6, 0x1F1F2), (0x1F1E6, 0x1F1F4), (0x1F1E6, 0x1F1F6), (0x1F1E6, 0x1F1F7),
            (0x1F1E6, 0x1F1F8), (0x1F1E6, 0x1F1F9), (0x1F1E6, 0x1F1FA), (0x1F1E6, 0x1F1FC), (0x1F1E6, 0x1F1FD),
            (0x1F1E6, 0x1F1FF), (0x1F1E7, 0x1F1E6),(0x1F1E7, 0x1F1E7), (0x1F1E7, 0x1F1E9), (0x1F1E7, 0x1F1EA),
            (0x1F1E7, 0x1F1EB), (0x1F1E7, 0x1F1EC), (0x1F1E7, 0x1F1ED), (0x1F1E7, 0x1F1EE), (0x1F1E7, 0x1F1F1),
            (0x1F1E7, 0x1F1F2), (0x1F1E7, 0x1F1F3), (0x1F1E7, 0x1F1F4), (0x1F1E7, 0x1F1F6), (0x1F1E7, 0x1F1F7),
            (0x1F1E7, 0x1F1F8),(0x1F1E7, 0x1F1F9),(0x1F1E7, 0x1F1FB),(0x1F1E7, 0x1F1FE),(0x1F1E8, 0x1F1E6),
            (0x1F1E8, 0x1F1E8), (0x1F1E8, 0x1F1E9),(0x1F1E8, 0x1F1EB),(0x1F1E8, 0x1F1EC),(0x1F1E8, 0x1F1ED),
            (0x1F1E8, 0x1F1EE),(0x1F1E8, 0x1F1F0),(0x1F1E8, 0x1F1F1),(0x1F1E8, 0x1F1F2), (0x1F1E8, 0x1F1F3)], numberOfPairs: 15), showingCards: 15, color: UIColor.two, id: 15)
            
        ]
    }
    
    func generateSingleEmoji(_ numbers: [Int], numberOfPairs: Int) -> [String] {
        var result = [String]()
        
        for _ in 0..<numberOfPairs{
            
            guard let element = numbers.randomElement(), let unicodescalar = UnicodeScalar(element) else {return [] }
            
            result.append(String(unicodescalar))
        }
        return result
    }
    
    func generateDoubleEmoji( numbers: [(Int, Int)], numberOfPairs: Int) -> [String] {
        var result = [String]()
        
        for _ in 0..<numberOfPairs {
            guard let element = numbers.randomElement(), let unicodeScalar1 = UnicodeScalar(element.0), let unicodeScalar2 = UnicodeScalar(element.1) else {
                return []
            }
            let emoji = String(unicodeScalar1) + String(unicodeScalar2)
            result.append(emoji)
        }
        return result
    }
   
}


