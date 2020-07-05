//
//  MemoryGame.swift
//  memorize
//
//  Created by Ana Thayna Franca on 05/07/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    struct Card {
        var isFaceUp: Bool
        var isMached: Bool
        var content: CardContent
    }
    
    func choose(card: Card) {
        print("card choose: \(card)")
    }
    
}
