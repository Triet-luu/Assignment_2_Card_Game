//
//  Rule.swift
//  Assignment_2_Card_Game
//
//  Created by Triet, Luu Huynh on 19/08/2022.
//

import Foundation
import SwiftUI

struct Player: Identifiable {
    var id = UUID()
    var player1: Int
    var username1: String
    var overallpoint1: Int
    var currentpoint1: Int
    
    var player2: Int
    var username2: String
    var overallpoint2: Int
    var currentpoint2: Int
}
