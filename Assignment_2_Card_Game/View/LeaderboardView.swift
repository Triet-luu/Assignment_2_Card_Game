//
//  LeaderboardView.swift
//  Assignment_2_Card_Game
//
//  Created by Triet, Luu Huynh on 17/08/2022.
//

import SwiftUI

struct LeaderboardView: View {
    var playerdetails = [
        Player(player: 1, username: "A", overallpoint: 0, currentpoint: 0),
        Player(player: 2, username: "B", overallpoint: 0, currentpoint: 0)
    ]
//    var playerdetails: Player
    
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
                    VStack {
                        Text("Name")
                            .font(.system(size: 25))
                            .foregroundColor(Color("bright_blue"))
                            .padding(30)
                        Text("\(playerdetails[0].username)")
                            .font(.system(size: 25))
                            .foregroundColor(Color("bright_blue"))
                            .padding(30)
                        Text("\(playerdetails[1].username)")
                            .font(.system(size: 25))
                            .foregroundColor(Color("bright_blue"))
                            .padding(30)
                    }
                    
                    VStack {
                        Text("Point")
                            .font(.system(size: 25))
                            .foregroundColor(Color("bright_blue"))
                            .padding(30)
                        Text("\(playerdetails[0].overallpoint)")
                            .font(.system(size: 25))
                            .foregroundColor(Color("bright_blue"))
                            .padding(30)
                        Text("\(playerdetails[1].overallpoint)")
                            .font(.system(size: 25))
                            .foregroundColor(Color("bright_blue"))
                            .padding(30)
                    }
                }
                
                Spacer()
            }
        }
    }
}

struct LeaderboardView_Previews: PreviewProvider {
    static var previews: some View {
        LeaderboardView(playerdetails: playerdetails)
            .previewInterfaceOrientation(.portrait)
    }
}
