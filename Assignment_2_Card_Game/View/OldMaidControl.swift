//
//  OldMaidEngine.swift
//  Assignment_2_Card_Game
//
//  Created by Triet, Luu Huynh on 28/08/2022.
//

import Foundation

class OldMaidControl {
    private var function = Interaction()
    
    var players: [User] {
        return function.players
    }
    
    func select(_ card: CardDetails, in player: User) {
        function.select(card, in: player)
    }
}
