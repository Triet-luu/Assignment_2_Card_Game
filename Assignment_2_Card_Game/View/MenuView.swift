//
//  MenuView.swift
//  Assignment_2_Card_Game
//
//  Created by Triet, Luu Huynh on 17/08/2022.
//

import SwiftUI

struct MenuView: View {
    @State private var play: Bool = true
    @State private var how: Bool = true
    
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
                    play = false
                }, label: {
                    Text("Play")
                        .font(.system(size: 40))
                })
                .frame(width: 80, height: 50)
                .foregroundColor(Color("light_blue"))
                .background(.black)
                Button(action: {
                    how = false
                }, label: {
                    Text("How to play")
                        .font(.system(size: 35))
                })
                .frame(width: 190, height: 50)
                .foregroundColor(Color("light_blue"))
                .background(.black)
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
