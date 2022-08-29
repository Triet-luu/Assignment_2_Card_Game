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
