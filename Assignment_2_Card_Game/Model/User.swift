//
//  User.swift
//  Assignment_2_Card_Game
//
//  Created by Triet, Luu Huynh on 28/08/2022.
//

import Foundation

typealias Stack = [CardDetails]

struct User: Identifiable {
    
    var cards = Stack()
    var id = UUID()
    var playerName = ""
    var isPlayer = false
    var activePlayer = false
}
