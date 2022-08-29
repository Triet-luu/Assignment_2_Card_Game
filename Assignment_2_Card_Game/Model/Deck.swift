//
//  Deck.swift
//  Assignment_2_Card_Game
//
//  Created by Triet, Luu Huynh on 27/08/2022.
//

import Foundation


struct Deck {
    private var cards = Stack()
    
    mutating func createDeck() {
        for suit in Suit.allCases {
            for rank in Rank.allCases {
                cards.append(CardDetails(rank: rank, suit: suit))
            }
        }
    }
    
    mutating func shuffle() {
        cards.shuffle()
    }
    
    mutating func drawCard() -> CardDetails {
        return cards.removeLast()
    }
    
    func remainingCards() -> Int {
        return cards.count
    }
}
