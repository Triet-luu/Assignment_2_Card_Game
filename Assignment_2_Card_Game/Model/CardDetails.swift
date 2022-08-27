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
    var suit: Suit
    
}
