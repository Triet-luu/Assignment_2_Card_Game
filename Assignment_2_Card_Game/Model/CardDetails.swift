//
//  SwiftUIView.swift
//  Assignment_2_Card_Game
//
//  Created by Triet, Luu Huynh on 17/08/2022.
//

import Foundation
import SwiftUI


struct CardDetails: Identifiable {
    var id = UUID()
    var name: String
    var image: Image {
        Image(name)
    }
    var rank: Rank
    var type: Suit
    
    enum Rank {
        case THREE, FOUR, FIVE, SIX, SEVEN, EIGHT, NINE, TEN, JACK, QUEEN, KING, ACE, TWO, JOKER
    }
    
    enum Suit {
        case CLUBS, SPADES, HEARTS, DIAMONDS
    }
}
