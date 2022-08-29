/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 2
  Author: Luu Huynh Triet
  ID: s3594528
  Created  date: 17/08/2022
  Last modified: 29/08/2022
  Acknowledgement: https://bicyclecards.com/how-to-play/old-maid/
 https://github.com/lcs-jliu/OldMaid/blob/master/OldMaid/main.swift
 https://www.youtube.com/watch?v=hJ3v6MtLGnI&ab_channel=CodingInANutshell
*/

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
