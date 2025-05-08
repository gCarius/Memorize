//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Guilherme Carius on 2025-05-07.
//

import SwiftUI

class EmojiMemoryGame {
    private(set) var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojiSet: Array<String> = ["🐶","🐱","🐭","🐹","🐰","🐻","🐼","🐨","🐵","🐿️","🥚","🎃","💩","🇨🇦","🙃"]
        let emojis = emojiSet.shuffled().prefix(Int.random(in: 2..<5))
        return MemoryGame<String>(numberOfPairOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    // MARK: -Access to Model
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    // MARK: -Intent(s)
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
