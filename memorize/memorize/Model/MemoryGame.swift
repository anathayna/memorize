//
//  MemoryGame.swift
//  memorize
//
//  Created by Ana Thayna Franca on 05/07/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import Foundation

struct MemoryGame<CardContent> where CardContent: Equatable {
    var cards: Array<Card>
    var indexOneAndOnlyFaceUpCard: Int? {
        get {
            var faceUpCardIndices = [Int]() //Array<Int>()
            for index in cards.indices {
                if cards[index].isFaceUp {
                    faceUpCardIndices.append(index)
                }
            }
            if faceUpCardIndices.count == 1 {
                return faceUpCardIndices.first
            } else {
                return nil
            }
        }
        set {
            for index in cards.indices {
                if index == newValue {
                    cards[index].isFaceUp = true
                } else {
                    cards[index].isFaceUp = false
                }
            }
        }
    }
    
    mutating func choose(card: Card) {
        print("card choose: \(card)")
        if let chosenIndex = cards.firstIndex(matching: card), !cards[chosenIndex].isFaceUp, !cards[chosenIndex].isMached {
            if let potentialMatchedIndex = indexOneAndOnlyFaceUpCard {
                if cards[chosenIndex].content == cards[potentialMatchedIndex].content {
                    cards[chosenIndex].isMached = true
                    cards[potentialMatchedIndex].isMached = true
                }
                self.cards[chosenIndex].isFaceUp = true
            } else {
                indexOneAndOnlyFaceUpCard = chosenIndex
            }
        }
    }
    
    init(numberOfPairsOfCards: Int, cardContentfactory: (Int) -> CardContent) {
        cards = Array<Card>()
        
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentfactory(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
    }
    
    struct Card : Identifiable {
        var isFaceUp: Bool = false
        var isMached: Bool = false
        var content: CardContent
        var id: Int
    }
    
}
