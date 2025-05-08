//
//  ContentView.swift
//  Memorize
//
//  Created by Guilherme Carius on 2025-05-07.
//

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame
    
    var body: some View {
        HStack() {
            ForEach(viewModel.cards) { card in
                CardView(card: card).onTapGesture {
                    viewModel.choose(card: card)
                }
                .aspectRatio(2/3, contentMode: .fit)
            }
            
        }
        .padding()
        .foregroundColor(Color.brown)
        .font(viewModel.cards.count < 10 ? .largeTitle : .body)
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    
    var body: some View {
        ZStack() {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 6)
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.brown)
            }
            
            
        }
    }
}

#Preview {
    ContentView(viewModel: EmojiMemoryGame())
}
