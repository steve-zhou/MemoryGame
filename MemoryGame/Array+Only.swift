//
//  Array+Only.swift
//  MemoryGame
//
//  Created by Steve Zhou on 6/1/20.
//  Copyright © 2020 Steve Zhou. All rights reserved.
//

import Foundation

extension Array {
    
    var only: Element? {
        count == 1 ? first : nil
    }
}
