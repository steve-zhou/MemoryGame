//
//  ContentView.swift
//  MemoryGame
//
//  Created by Steve Zhou on 5/20/20.
//  Copyright © 2020 Steve Zhou. All rights reserved.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    
   @ObservedObject var viewModel: EmojiMemoryGame
    
    var body: some View {
        
        
        VStack {
            Grid(viewModel.cards) { card in
                
                CardView(card: card).onTapGesture {
                     self.viewModel.choose(card: card)
                }.padding(5)
            }
            
            .foregroundColor(Color(viewModel.color))
            
            HStack {
                Spacer()
                
                Button(action: {
                    self.viewModel.newGame()
                }) {
                    Text("New Game").font(.title).fontWeight(.medium)
                }
                .foregroundColor(Color.white)
                .padding()
                .background(LinearGradient(gradient: Gradient(colors: [Color(viewModel.color), Color.gray]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(15.0)
                .scaleEffect(0.75)
                Spacer()
                
                Text("Score: \(viewModel.score)").font(.system(size: 25, weight: .medium, design: .serif))
                   
                
                Spacer()
            }
          
         }
        .navigationBarTitle(Text(viewModel.themeName), displayMode: .inline)
    }
    
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        
//        EmojiMemoryGameView(viewModel: EmojiMemoryGame(theme: Theme(name: "Creatures", emojiSet: Array(0x1F985...0x1F991), showingCards: Int.random(in: 5...10), color: UIColor.systemPink, id: 8)))
//    }
//}
