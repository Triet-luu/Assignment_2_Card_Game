/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 2
  Author: Luu Huynh Triet
  ID: s3594528
  Created  date: 17/08/2022
  Last modified: 29/08/2022
  Acknowledgement: https://bicyclecards.com/how-to-play/old-maid/
 https://github.com/lcs-jliu/OldMaid/blob/master/OldMaid/main.swift
 https://www.youtube.com/watch?v=hJ3v6MtLGnI&ab_channel=CodingInANutshell
*/

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
