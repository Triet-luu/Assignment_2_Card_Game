//
//  GameView.swift
//  Assignment_2_Card_Game
//
//  Created by Triet, Luu Huynh on 17/08/2022.
//

import SwiftUI

struct GameView: View {
    @State private var deal: Bool = true
    
    var card: CardDetails
    var player: Player
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.black, Color("dark_blue"), Color("dark_cyan")], startPoint: .topTrailing, endPoint: .bottomLeading).edgesIgnoringSafeArea(.all)
            VStack {
                Text("Player \(player.player2)")
                    .font(.system(size: 20))
                    .foregroundColor(Color("red"))
                ScrollView(.horizontal) {
                    HStack {
                        ForEach (cardsInformation) { card in CardView(cardName: BACK)
                        }
                    }
                }
                Spacer()
                HStack {
                    Image(BACK)
                        .resizable()
                        .frame(width: 50, height: 70, alignment: .bottomLeading)
                        .padding(5)
                    Text("Table")
                        .frame(width: 50, height:50)
                        .padding(90)
                }
                Spacer()
                Text("Player \(player.player1)")
                    .font(.system(size: 25))
                    .foregroundColor(Color("green"))
                ScrollView(.horizontal) {
                    HStack {
                        ForEach (cardsInformation) { card in CardView(cardName: card.name)
                        }
                    }
                }
                Spacer()
            }
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(card: cardsInformation[0], player: playerdetails[0])
            .previewInterfaceOrientation(.portrait)
    }
}
