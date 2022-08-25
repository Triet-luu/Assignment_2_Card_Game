//
//  CardView.swift
//  Assignment_2_Card_Game
//
//  Created by Triet, Luu Huynh on 25/08/2022.
//

import SwiftUI

struct CardView: View {
    var cardName: String
    var body: some View {
        Image(cardName)
            .resizable()
            .frame(width: 50, height: 70, alignment: .bottomLeading)
            .padding(0)
    }
}
