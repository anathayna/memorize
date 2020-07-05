//
//  EmojiMemoryGame.swift
//  memorize
//
//  Created by Ana Thayna Franca on 05/07/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import SwiftUI

func createCardContent(pairIndex: Int) -> String {
    return "💩"
}

class EmojiMemoryGame {
    private var model: MemoryGame<String> =
        MemoryGame<String>(numberOfPairsOfCards: 2, cardContentfactory: createCardContent)
    
    //MARK: - Access
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    //MARK: - Intent
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
