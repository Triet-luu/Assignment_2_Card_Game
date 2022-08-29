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
import SwiftUI

var cardsInformation: [CardDetails] = [
    CardDetails(rank: .ACE, suit: .CLUBS),
    CardDetails(rank: .ACE, suit: .DIAMONDS),
    CardDetails(rank: .ACE, suit: .HEARTS),
    CardDetails(rank: .ACE, suit: .SPADES),
    CardDetails(rank: .TWO, suit: .CLUBS),
    CardDetails(rank: .TWO, suit: .DIAMONDS),
    CardDetails(rank: .TWO, suit: .HEARTS),
    CardDetails(rank: .TWO, suit: .SPADES),
    CardDetails(rank: .THREE, suit: .CLUBS),
    CardDetails(rank: .THREE, suit: .DIAMONDS),
    CardDetails(rank: .THREE, suit: .HEARTS),
    CardDetails(rank: .THREE, suit: .SPADES),
    CardDetails(rank: .FOUR, suit: .CLUBS),
    CardDetails(rank: .FOUR, suit: .DIAMONDS),
    CardDetails(rank: .FOUR, suit: .HEARTS),
    CardDetails(rank: .FOUR, suit: .SPADES),
    CardDetails(rank: .FIVE, suit: .CLUBS),
    CardDetails(rank: .FIVE, suit: .DIAMONDS),
    CardDetails(rank: .FIVE, suit: .HEARTS),
    CardDetails(rank: .FIVE, suit: .SPADES),
    CardDetails(rank: .SIX, suit: .CLUBS),
    CardDetails(rank: .SIX, suit: .DIAMONDS),
    CardDetails(rank: .SIX, suit: .HEARTS),
    CardDetails(rank: .SIX, suit: .SPADES),
    CardDetails(rank: .SEVEN, suit: .CLUBS),
    CardDetails(rank: .SEVEN, suit: .DIAMONDS),
    CardDetails(rank: .SEVEN, suit: .HEARTS),
    CardDetails(rank: .SEVEN, suit: .SPADES),
    CardDetails(rank: .EIGHT, suit: .CLUBS),
    CardDetails(rank: .EIGHT, suit: .DIAMONDS),
    CardDetails(rank: .EIGHT, suit: .HEARTS),
    CardDetails(rank: .EIGHT, suit: .SPADES),
    CardDetails(rank: .NINE, suit: .CLUBS),
    CardDetails(rank: .NINE, suit: .DIAMONDS),
    CardDetails(rank: .NINE, suit: .HEARTS),
    CardDetails(rank: .NINE, suit: .SPADES),
    CardDetails(rank: .TEN, suit: .CLUBS),
    CardDetails(rank: .TEN, suit: .DIAMONDS),
    CardDetails(rank: .TEN, suit: .HEARTS),
    CardDetails(rank: .TEN, suit: .SPADES),
    CardDetails(rank: .JACK, suit: .CLUBS),
    CardDetails(rank: .JACK, suit: .DIAMONDS),
    CardDetails(rank: .JACK, suit: .HEARTS),
    CardDetails(rank: .JACK, suit: .SPADES),
    CardDetails(rank: .QUEEN, suit: .CLUBS),
    CardDetails(rank: .QUEEN, suit: .DIAMONDS),
    CardDetails(rank: .QUEEN, suit: .HEARTS),
    CardDetails(rank: .QUEEN, suit: .SPADES),
    CardDetails(rank: .KING, suit: .CLUBS),
    CardDetails(rank: .KING, suit: .DIAMONDS),
    CardDetails(rank: .KING, suit: .HEARTS),
    CardDetails(rank: .KING, suit: .SPADES),
    CardDetails(rank: .JOKER, suit: .HEARTS)
]
