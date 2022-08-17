//
//  SwiftUIView.swift
//  Assignment_2_Card_Game
//
//  Created by Triet, Luu Huynh on 17/08/2022.
//

import Foundation
import SwiftUI

let cardType = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "Ace", "Jack", "Queen", "King", "Joker"]
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
let FOUR_OF_SPADES = "4_of_spades2"
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
let NINE_OF_SPADES = "9_of_spades2"
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


var details: [CardDetails] = [
    CardDetails(name: ACE_OF_CLUBS, type: cardType[9]),
    CardDetails(name: ACE_OF_DIAMONDS, type: cardType[9]),
    CardDetails(name: ACE_OF_HEARTS, type: cardType[9]),
    CardDetails(name: ACE_OF_SPADES, type: cardType[9]),
    CardDetails(name: TWO_OF_CLUBS, type: cardType[0]),
    CardDetails(name: TWO_OF_DIAMONDS, type: cardType[0]),
    CardDetails(name: TWO_OF_HEARTS, type: cardType[0]),
    CardDetails(name: TWO_OF_SPADES, type: cardType[0]),
    CardDetails(name: THREE_OF_CLUBS, type: cardType[1]),
    CardDetails(name: THREE_OF_DIAMONDS, type: cardType[1]),
    CardDetails(name: THREE_OF_HEARTS, type: cardType[1]),
    CardDetails(name: THREE_OF_SPADES, type: cardType[1]),
    CardDetails(name: FOUR_OF_CLUBS, type: cardType[2]),
    CardDetails(name: FOUR_OF_DIAMONDS, type: cardType[2]),
    CardDetails(name: FOUR_OF_HEARTS, type: cardType[2]),
    CardDetails(name: FOUR_OF_SPADES, type: cardType[2]),
    CardDetails(name: FIVE_OF_CLUBS, type: cardType[3]),
    CardDetails(name: FIVE_OF_DIAMONDS, type: cardType[3]),
    CardDetails(name: FIVE_OF_HEARTS, type: cardType[3]),
    CardDetails(name: FIVE_OF_SPADES, type: cardType[3]),
    CardDetails(name: SIX_OF_CLUBS, type: cardType[4]),
    CardDetails(name: SIX_OF_DIAMONDS, type: cardType[4]),
    CardDetails(name: SIX_OF_HEARTS, type: cardType[4]),
    CardDetails(name: SIX_OF_SPADES, type: cardType[4]),
    CardDetails(name: SEVEN_OF_CLUBS, type: cardType[5]),
    CardDetails(name: SEVEN_OF_DIAMONDS, type: cardType[5]),
    CardDetails(name: SEVEN_OF_HEARTS, type: cardType[5]),
    CardDetails(name: SEVEN_OF_SPADES, type: cardType[5]),
    CardDetails(name: EIGHT_OF_CLUBS, type: cardType[6]),
    CardDetails(name: EIGHT_OF_DIAMONDS, type: cardType[6]),
    CardDetails(name: EIGHT_OF_HEARTS, type: cardType[6]),
    CardDetails(name: EIGHT_OF_SPADES, type: cardType[6]),
    CardDetails(name: NINE_OF_CLUBS, type: cardType[7]),
    CardDetails(name: NINE_OF_DIAMONDS, type: cardType[7]),
    CardDetails(name: NINE_OF_HEARTS, type: cardType[7]),
    CardDetails(name: NINE_OF_SPADES, type: cardType[7]),
    CardDetails(name: TEN_OF_CLUBS, type: cardType[8]),
    CardDetails(name: TEN_OF_DIAMONDS, type: cardType[8]),
    CardDetails(name: TEN_OF_HEARTS, type: cardType[8]),
    CardDetails(name: TEN_OF_SPADES, type: cardType[8]),
    CardDetails(name: JACK_OF_CLUBS, type: cardType[10]),
    CardDetails(name: JACK_OF_DIAMONDS, type: cardType[10]),
    CardDetails(name: JACK_OF_HEARTS, type: cardType[10]),
    CardDetails(name: JACK_OF_SPADES, type: cardType[10]),
    CardDetails(name: QUEEN_OF_CLUBS, type: cardType[11]),
    CardDetails(name: QUEEN_OF_DIAMONDS, type: cardType[11]),
    CardDetails(name: QUEEN_OF_HEARTS, type: cardType[11]),
    CardDetails(name: QUEEN_OF_SPADES, type: cardType[11]),
    CardDetails(name: KING_OF_CLUBS, type: cardType[12]),
    CardDetails(name: KING_OF_DIAMONDS, type: cardType[12]),
    CardDetails(name: KING_OF_HEARTS, type: cardType[12]),
    CardDetails(name: KING_OF_SPADES, type: cardType[12]),
    CardDetails(name: JOKER, type: cardType[13]),
]
