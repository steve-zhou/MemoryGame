//
//  CardView.swift
//  MemoryGame
//
//  Created by Steve Zhou on 6/2/20.
//  Copyright © 2020 Steve Zhou. All rights reserved.
//

import SwiftUI


struct CardView:View {
    var card: MemoryGame<String>.Card
    
    //MARK: - Drawing Constants
   private let cornerRadius: CGFloat = 10.0
   private let edgeLineWidth: CGFloat = 3
   
    var body: some View{
        
        GeometryReader { geometry in
            self.body(size: geometry.size)
        }
    }
    
  private func body(size: CGSize) -> some View {
        ZStack {
           if self.card.isFaceUP {
            RoundedRectangle(cornerRadius: cornerRadius).fill(Color.white)
            RoundedRectangle(cornerRadius: cornerRadius).stroke(lineWidth: edgeLineWidth)
            Pie(startAngle: Angle.degrees(0 - 90), endAngle: Angle.degrees(110 - 90), clockwise: true)
                .padding(5.0).opacity(0.4)
            Text(self.card.content)
            
           }else{
            if !card.isMatched {
                RoundedRectangle(cornerRadius: cornerRadius)
               }
           }
        }
        .font(Font.system(size: fontSize(for: size)))
    }
   
    
  private func fontSize(for size: CGSize) -> CGFloat {
        min(size.width, size.height) * 0.7
    }
}


