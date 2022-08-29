//
//  OldMaidEngine.swift
//  Assignment_2_Card_Game
//
//  Created by Triet, Luu Huynh on 28/08/2022.
//

import Foundation

class OldMaidControl: ObservableObject {
    @Published private var function = Interaction()
    
    var players: [User] {
        return function.players
    }
    
    var discardedHands: [DiscardHand] {
        return function.discardedHands
    }
    
    func select(_ card: CardDetails, in player: User) {
        function.select(card, in: player)
    }
    
    func checkHand (_ cards: Stack) -> Pair {
        return Pair(cards)
    }
    
    func activePlayer(_ player: User) {
        function.activePlayer(player)
    }
    
    func findStartingPlayer() -> User {
        return function.findStartingPlayer()
    }
}
