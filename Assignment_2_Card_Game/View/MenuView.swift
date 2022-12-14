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

struct MenuView: View {
    @State private var play: Bool = false
    @State private var how: Bool = false
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.black, Color("dark_blue"), Color("dark_cyan")], startPoint: .topTrailing, endPoint: .bottomLeading).edgesIgnoringSafeArea(.all)
            VStack {
                
                Image("rmit-casino-small-logo")
                    .resizable()
                    .scaledToFit()
                Text("   Welcome to \ncharity machine")
                    .font(.system(size: 30))
                    .foregroundColor(Color("blue"))
                Spacer()
                Button(action: {
                    self.play = true
                }, label: {
                    Text("Play")
                        .font(.system(size: 40))
                })
                .frame(width: 80, height: 50)
                .foregroundColor(Color("light_blue"))
                .background(.black)
                .sheet(isPresented: $play) {
                    GameView()
                }
                Button(action: {
                    how = true
                }, label: {
                    Text("How to play")
                        .font(.system(size: 35))
                })
                .frame(width: 190, height: 50)
                .foregroundColor(Color("light_blue"))
                .background(.black)
                .sheet(isPresented: $how) {
                    HowToPlayView(rules: RulesDetails[0])
                }
            Spacer()
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}
