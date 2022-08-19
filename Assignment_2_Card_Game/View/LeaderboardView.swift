//
//  LeaderboardView.swift
//  Assignment_2_Card_Game
//
//  Created by Triet, Luu Huynh on 17/08/2022.
//

import SwiftUI

struct LeaderboardView: View {
    var rules: GameRules
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.black, Color("dark_blue"), Color("dark_cyan")], startPoint: .topTrailing, endPoint: .bottomLeading).edgesIgnoringSafeArea(.all)
            VStack {
                Image("rmit-casino-small-logo")
                    .resizable()
                    .scaledToFit()
                Text(rules.name)
                    .font(.system(size: 50))
                    .foregroundColor(Color("blue"))
                Spacer()
            Spacer()
            }
        }
    }
}

struct LeaderboardView_Previews: PreviewProvider {
    static var previews: some View {
        LeaderboardView(rules: RulesDetails[0])
    }
}
