//
//  Hand.swift
//  Assignment_2_Card_Game
//
//  Created by Triet, Luu Huynh on 26/08/2022.
//

import Foundation
import SwiftUI

struct Deck {
    var cards = [CardDetails]()
    
    mutating func createDeck() {
        for suit in Suit.allCases {
            for rank in Rank.allCases {
                cards.append(CardDetails(rank: rank, suit: suit))
            }
        }
    }
}
