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
*/

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
