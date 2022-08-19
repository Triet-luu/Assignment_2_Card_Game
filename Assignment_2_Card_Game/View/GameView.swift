//
//  GameView.swift
//  Assignment_2_Card_Game
//
//  Created by Triet, Luu Huynh on 17/08/2022.
//

import SwiftUI

struct GameView: View {
    @State private var deal: Bool = true
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.black, Color("dark_blue"), Color("dark_cyan")], startPoint: .topTrailing, endPoint: .bottomLeading).edgesIgnoringSafeArea(.all)
            VStack {
                
                Image("rmit-casino-small-logo")
                    .resizable()
                    .scaledToFit()
                Text("Player 2")
                    .font(.system(size: 40))
                    .foregroundColor(Color("red"))
                Spacer()
                HStack {
                    Text("Deck")
                        .frame(width: 40, height: 50)
                        .padding()
                    Text("Table")
                        .frame(width: 50, height:50)
                        .padding(90)
                }
                Spacer()
                Text("Player 1")
                    .font(.system(size: 40))
                    .foregroundColor(Color("blue"))
                Spacer()
            }
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
            .previewInterfaceOrientation(.portrait)
    }
}
