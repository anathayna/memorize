//
//  EmojiMemoryGame.swift
//  memorize
//
//  Created by Ana Thayna Franca on 05/07/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame {
    private(set) var model: MemoryGame<String>
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
