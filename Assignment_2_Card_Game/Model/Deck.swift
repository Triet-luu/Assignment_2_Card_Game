//
//  Deck.swift
//  Assignment_2_Card_Game
//
//  Created by Triet, Luu Huynh on 27/08/2022.
//

import Foundation

struct Deck {
    private var cards = [CardDetails]()
    
    mutating func createDeck() {
        for suit in Suit.allCases {
            for rank in Rank.allCases {
                cards.append(CardDetails(name: "", rank: rank, suit: suit))
            }
        }
    }
    
    mutating func shuffle() {
        cards.shuffle()
    }
}
