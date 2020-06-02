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
            HStack {
                Text("\(viewModel.themeName)")
                    .font(.system(size: 30, weight: .medium, design: .serif))
            }.foregroundColor(Color(viewModel.color))
            
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
                
                Text("Score: \(viewModel.score)")
                    .font(.system(size: 25, weight: .medium, design: .serif))
                    .italic()
                
                Spacer()
            }
          
         }
        
    }
    
}

struct CardView:View {
    var card: MemoryGame<String>.Card
    
    //MARK: - Drawing Constants
    let cornerRadius: CGFloat = 10.0
    let edgeLineWidth: CGFloat = 3
   
    var body: some View{
        
        GeometryReader { geometry in
            self.body(size: geometry.size)
        }
    }
    
    func body(size: CGSize) -> some View {
        ZStack {
           if self.card.isFaceUP {
            RoundedRectangle(cornerRadius: cornerRadius).fill(Color.white)
               RoundedRectangle(cornerRadius: cornerRadius).stroke(lineWidth: edgeLineWidth)
               Text(self.card.content)
           }else{
            if !card.isMatched {
                 RoundedRectangle(cornerRadius: cornerRadius).fill()
               }
           }
        }
        .font(Font.system(size: fontSize(for: size)))
    }
   
    
    func fontSize(for size: CGSize) -> CGFloat {
        min(size.width, size.height) * 0.65
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        EmojiMemoryGameView(viewModel: EmojiMemoryGame())
    }
}
