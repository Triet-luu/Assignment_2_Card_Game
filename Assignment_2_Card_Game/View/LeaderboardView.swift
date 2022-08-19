//
//  LeaderboardView.swift
//  Assignment_2_Card_Game
//
//  Created by Triet, Luu Huynh on 17/08/2022.
//

import SwiftUI

struct LeaderboardView: View {
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.black, Color("dark_blue"), Color("dark_cyan")], startPoint: .topTrailing, endPoint: .bottomLeading).edgesIgnoringSafeArea(.all)
            VStack {
                Image("rmit-casino-small-logo")
                    .resizable()
                    .scaledToFit()
                Text("Leaderboard")
                    .font(.system(size: 50))
                    .foregroundColor(Color("blue"))
                HStack {
                    Text("Name")
                        .font(.system(size: 25))
                        .foregroundColor(Color("bright_blue"))
                        .padding(30)
                    Text("Point")
                        .font(.system(size: 25))
                        .foregroundColor(Color("bright_blue"))
                        .padding(30)
                }
                
                Spacer()
            }
        }
    }
}

struct LeaderboardView_Previews: PreviewProvider {
    static var previews: some View {
        LeaderboardView()
            .previewInterfaceOrientation(.portrait)
    }
}
