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
    
    init(numberOfPairsOfCards: Int, cardContentfactory: (Int) -> CardContent) {
        cards = Array<Card>()
        
        for pairIndex in 0...numberOfPairsOfCards {
            let content = cardContentfactory(pairIndex)
            cards.append(Card(isFaceUp: false, isMached: false, content: content))
            cards.append(Card(isFaceUp: false, isMached: false, content: content))
        }
    }
    
    func choose(card: Card) {
        print("card choose: \(card)")
    }
    
}
