//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by 周珊 on 2021/1/2.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    // MARK: - Create model var
    
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
        
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["🐶", "🐱", "🐭"]
        return MemoryGame<String>(numberofPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    // MARK: - Access to the model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) -> Void {
        objectWillChange.send()
        model.choose(card: card)
    }
} 
