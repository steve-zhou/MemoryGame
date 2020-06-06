//
//  ThemeRow.swift
//  MemoryGame
//
//  Created by Steve Zhou on 6/2/20.
//  Copyright © 2020 Steve Zhou. All rights reserved.
//

import SwiftUI

struct ThemeRow: View {
    
    var theme: Theme
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: nil){
            
            Text(theme.themeName).foregroundColor(Color(theme.themeColor))
            
            HStack{
                
                ForEach(0..<theme.emojisForTheme.count, id: \.self) { aTheme in
                    
                    Text(String(self.theme.emojisForTheme[aTheme])).clipped()
                }
            
            }.padding()
        }
      
        
    }
}

