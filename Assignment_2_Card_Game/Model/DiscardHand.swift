//
//  DiscardHand.swift
//  Assignment_2_Card_Game
//
//  Created by Triet, Luu Huynh on 29/08/2022.
//

import Foundation

struct DiscardHand: Identifiable {
    var id = UUID()
    var hand: Stack
    var handOwner: User
}
