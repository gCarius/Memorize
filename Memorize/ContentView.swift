//
//  ContentView.swift
//  Memorize
//
//  Created by Guilherme Carius on 2025-05-07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack() {
            ForEach(0..<4) { index in
                CardView(isFacedUp: true)
            }
            
        }
        .padding()
        .foregroundColor(Color.brown)
        .font(Font.largeTitle)
    }
}

struct CardView: View {
    var isFacedUp: Bool
    
    var body: some View {
        ZStack() {
            if isFacedUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 6)
                Text("🥚")
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.brown)
            }
            
            
        }
    }
}

#Preview {
    ContentView()
}
