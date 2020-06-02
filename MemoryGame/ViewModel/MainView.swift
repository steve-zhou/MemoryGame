//
//  MainView.swift
//  MemoryGame
//
//  Created by Steve Zhou on 6/2/20.
//  Copyright © 2020 Steve Zhou. All rights reserved.
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
        
        NavigationView{
            
            List(Themes.shared.generatingThemes(), id: \.themeName) { theme in
                
                NavigationLink(destination: EmojiMemoryGameView(viewModel: EmojiMemoryGame(theme: theme))) {
                    
                    ThemeRow(theme: theme)
                }
                
            }
             .navigationBarTitle(Text("Themes").font(.system(size: 25, weight: .medium, design: .serif)))
            
        }
       
        
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
