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
    var player: Int
    var username: String
    var overallpoint: Int
    var currentpoint: Int
}
