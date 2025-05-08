//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Guilherme Carius on 2025-05-07.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
