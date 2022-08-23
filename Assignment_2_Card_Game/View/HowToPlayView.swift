//
//  HowToPlayView.swift
//  Assignment_2_Card_Game
//
//  Created by Triet, Luu Huynh on 17/08/2022.
//

import SwiftUI

struct HowToPlayView: View {
    var rules: GameRules
    
    var body: some View {
        ScrollView {
            ZStack {
                LinearGradient(colors: [.black, Color("dark_blue"), Color("dark_cyan")], startPoint: .topTrailing, endPoint: .bottomLeading).edgesIgnoringSafeArea(.all)
                VStack {
                    Image("rmit-casino-small-logo")
                        .resizable()
                        .scaledToFit()
                    Text(rules.name)
                        .font(.system(size: 50))
                        .foregroundColor(Color("blue"))
                    Text(rules.rule)
                        .font(.system(size: 20))
                        .padding(8)
                        .foregroundColor(Color("bright_blue"))
                }
            }
        }
    }
}

struct HowToPlayView_Previews: PreviewProvider {
    static var previews: some View {
        HowToPlayView(rules: RulesDetails[0])
    }
}
