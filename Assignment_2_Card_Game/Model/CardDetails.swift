//
//  SwiftUIView.swift
//  Assignment_2_Card_Game
//
//  Created by Triet, Luu Huynh on 17/08/2022.
//

import Foundation
import SwiftUI


struct CardDetails: Identifiable {
    var id = UUID()
    var name: String
    var image: Image {
        Image(name)
    }
    var type: String
    
    init(id: UUID = UUID(), name: String, type: String) {
        self.id = id
        self.name = name
        self.type = type
    }
}
