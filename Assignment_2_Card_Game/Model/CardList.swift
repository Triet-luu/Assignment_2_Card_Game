//
//  SwiftUIView.swift
//  Assignment_2_Card_Game
//
//  Created by Triet, Luu Huynh on 17/08/2022.
//

import Foundation
import SwiftUI

let ACE_OF_CLUBS = "ace_of_clubs"
let ACE_OF_DIAMONDS = "ace_of_diamonds"
let ACE_OF_HEARTS = "ace_of_hearts"
let ACE_OF_SPADES = "ace_of_spades2"
let TWO_OF_CLUBS = "2_of_clubs"
let TWO_OF_DIAMONDS = "2_of_diamonds"
let TWO_OF_HEARTS = "2_of_hearts"
let TWO_OF_SPADES = "2_of_spades"
let THREE_OF_CLUBS = "3_of_clubs"
let THREE_OF_DIAMONDS = "3_of_diamonds"
let THREE_OF_HEARTS = "3_of_hearts"
let THREE_OF_SPADES = "3_of_spades"
let FOUR_OF_CLUBS = "4_of_clubs"
let FOUR_OF_DIAMONDS = "4_of_diamonds"
let FOUR_OF_HEARTS = "4_of_hearts"
let FOUR_OF_SPADES = "4_of_spades"
let FIVE_OF_CLUBS = "5_of_clubs"
let FIVE_OF_DIAMONDS = "5_of_diamonds"
let FIVE_OF_HEARTS = "5_of_hearts"
let FIVE_OF_SPADES = "5_of_spades"
let SIX_OF_CLUBS = "6_of_clubs"
let SIX_OF_DIAMONDS = "6_of_diamonds"
let SIX_OF_HEARTS = "6_of_hearts"
let SIX_OF_SPADES = "6_of_spades"
let SEVEN_OF_CLUBS = "7_of_clubs"
let SEVEN_OF_DIAMONDS = "7_of_diamonds"
let SEVEN_OF_HEARTS = "7_of_hearts"
let SEVEN_OF_SPADES = "7_of_spades"
let EIGHT_OF_CLUBS = "8_of_clubs"
let EIGHT_OF_DIAMONDS = "8_of_diamonds"
let EIGHT_OF_HEARTS = "8_of_hearts"
let EIGHT_OF_SPADES = "8_of_spades"
let NINE_OF_CLUBS = "9_of_clubs"
let NINE_OF_DIAMONDS = "9_of_diamonds"
let NINE_OF_HEARTS = "9_of_hearts"
let NINE_OF_SPADES = "9_of_spades"
let TEN_OF_CLUBS = "10_of_clubs"
let TEN_OF_DIAMONDS = "10_of_diamonds"
let TEN_OF_HEARTS = "10_of_hearts"
let TEN_OF_SPADES = "10_of_spades"
let JACK_OF_CLUBS = "jack_of_clubs2"
let JACK_OF_DIAMONDS = "jack_of_diamonds2"
let JACK_OF_HEARTS = "jack_of_hearts2"
let JACK_OF_SPADES = "jack_of_spades2"
let QUEEN_OF_CLUBS = "queen_of_clubs2"
let QUEEN_OF_DIAMONDS = "queen_of_diamonds2"
let QUEEN_OF_HEARTS = "queen_of_hearts2"
let QUEEN_OF_SPADES = "queen_of_spades2"
let KING_OF_CLUBS = "king_of_clubs2"
let KING_OF_DIAMONDS = "king_of_diamonds2"
let KING_OF_HEARTS = "king_of_hearts2"
let KING_OF_SPADES = "king_of_spades2"
let JOKER = "black_joker"
let BACK = "back"

let cardsInformation: [CardDetails] = [
    CardDetails(name: ACE_OF_CLUBS, rank: .ACE, type: .CLUBS),
    CardDetails(name: ACE_OF_DIAMONDS, rank: .ACE, type: .DIAMONDS),
    CardDetails(name: ACE_OF_HEARTS, rank: .ACE, type: .HEARTS),
    CardDetails(name: ACE_OF_SPADES, rank: .ACE, type: .SPADES),
    CardDetails(name: TWO_OF_CLUBS, rank: .TWO, type: .CLUBS),
    CardDetails(name: TWO_OF_DIAMONDS, rank: .TWO, type: .DIAMONDS),
    CardDetails(name: TWO_OF_HEARTS, rank: .TWO, type: .HEARTS),
    CardDetails(name: TWO_OF_SPADES, rank: .TWO, type: .SPADES),
    CardDetails(name: THREE_OF_CLUBS, rank: .THREE, type: .CLUBS),
    CardDetails(name: THREE_OF_DIAMONDS, rank: .THREE, type: .DIAMONDS),
    CardDetails(name: THREE_OF_HEARTS, rank: .THREE, type: .HEARTS),
    CardDetails(name: THREE_OF_SPADES, rank: .THREE, type: .SPADES),
    CardDetails(name: FOUR_OF_CLUBS, rank: .FOUR, type: .CLUBS),
    CardDetails(name: FOUR_OF_DIAMONDS, rank: .FOUR, type: .DIAMONDS),
    CardDetails(name: FOUR_OF_HEARTS, rank: .FOUR, type: .HEARTS),
    CardDetails(name: FOUR_OF_SPADES, rank: .FOUR, type: .SPADES),
    CardDetails(name: FIVE_OF_CLUBS, rank: .FIVE, type: .CLUBS),
    CardDetails(name: FIVE_OF_DIAMONDS, rank: .FIVE, type: .DIAMONDS),
    CardDetails(name: FIVE_OF_HEARTS, rank: .FIVE, type: .HEARTS),
    CardDetails(name: FIVE_OF_SPADES, rank: .FIVE, type: .SPADES),
    CardDetails(name: SIX_OF_CLUBS, rank: .SIX, type: .CLUBS),
    CardDetails(name: SIX_OF_DIAMONDS, rank: .SIX, type: .DIAMONDS),
    CardDetails(name: SIX_OF_HEARTS, rank: .SIX, type: .HEARTS),
    CardDetails(name: SIX_OF_SPADES, rank: .SIX, type: .SPADES),
    CardDetails(name: SEVEN_OF_CLUBS, rank: .SEVEN, type: .CLUBS),
    CardDetails(name: SEVEN_OF_DIAMONDS, rank: .SEVEN, type: .DIAMONDS),
    CardDetails(name: SEVEN_OF_HEARTS, rank: .SEVEN, type: .HEARTS),
    CardDetails(name: SEVEN_OF_SPADES, rank: .SEVEN, type: .SPADES),
    CardDetails(name: EIGHT_OF_CLUBS, rank: .EIGHT, type: .CLUBS),
    CardDetails(name: EIGHT_OF_DIAMONDS, rank: .EIGHT, type: .DIAMONDS),
    CardDetails(name: EIGHT_OF_HEARTS, rank: .EIGHT, type: .HEARTS),
    CardDetails(name: EIGHT_OF_SPADES, rank: .EIGHT, type: .SPADES),
    CardDetails(name: NINE_OF_CLUBS, rank: .NINE, type: .CLUBS),
    CardDetails(name: NINE_OF_DIAMONDS, rank: .NINE, type: .DIAMONDS),
    CardDetails(name: NINE_OF_HEARTS, rank: .NINE, type: .HEARTS),
    CardDetails(name: NINE_OF_SPADES, rank: .NINE, type: .SPADES),
    CardDetails(name: TEN_OF_CLUBS, rank: .TEN, type: .CLUBS),
    CardDetails(name: TEN_OF_DIAMONDS, rank: .TEN, type: .DIAMONDS),
    CardDetails(name: TEN_OF_HEARTS, rank: .TEN, type: .HEARTS),
    CardDetails(name: TEN_OF_SPADES, rank: .TEN, type: .SPADES),
    CardDetails(name: JACK_OF_CLUBS, rank: .JACK, type: .CLUBS),
    CardDetails(name: JACK_OF_DIAMONDS, rank: .JACK, type: .DIAMONDS),
    CardDetails(name: JACK_OF_HEARTS, rank: .JACK, type: .HEARTS),
    CardDetails(name: JACK_OF_SPADES, rank: .JACK, type: .SPADES),
    CardDetails(name: QUEEN_OF_CLUBS, rank: .QUEEN, type: .CLUBS),
    CardDetails(name: QUEEN_OF_DIAMONDS, rank: .QUEEN, type: .DIAMONDS),
    CardDetails(name: QUEEN_OF_HEARTS, rank: .QUEEN, type: .HEARTS),
    CardDetails(name: QUEEN_OF_SPADES, rank: .QUEEN, type: .SPADES),
    CardDetails(name: KING_OF_CLUBS, rank: .KING, type: .CLUBS),
    CardDetails(name: KING_OF_DIAMONDS, rank: .KING, type: .DIAMONDS),
    CardDetails(name: KING_OF_HEARTS, rank: .KING, type: .HEARTS),
    CardDetails(name: KING_OF_SPADES, rank: .KING, type: .SPADES),
    CardDetails(name: JOKER, rank: .JOKER, type: .HEARTS)
]
