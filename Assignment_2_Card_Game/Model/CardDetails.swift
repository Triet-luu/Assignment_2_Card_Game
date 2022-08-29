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
    
    var rank: Rank
    var suit: Suit
    var selected = false
    var name: String {
        if "\(rank)" == "JOKER" || "\(rank)" == "BACK" {
            return "\(rank)"
        } else {
            return "\(rank) \(suit)"
        }
    }
    var image: Image {
        Image(name)
    }
}
