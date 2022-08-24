//
//  GameView.swift
//  Assignment_2_Card_Game
//
//  Created by Triet, Luu Huynh on 17/08/2022.
//

import SwiftUI

struct GameView: View {
    @State private var deal: Bool = true
    let details: [CardDetails] = [
        CardDetails(name: ACE_OF_CLUBS, type: cardType[9]),
        CardDetails(name: ACE_OF_DIAMONDS, type: cardType[9]),
        CardDetails(name: ACE_OF_HEARTS, type: cardType[9]),
        CardDetails(name: ACE_OF_SPADES, type: cardType[9]),
        CardDetails(name: TWO_OF_CLUBS, type: cardType[0]),
        CardDetails(name: TWO_OF_DIAMONDS, type: cardType[0]),
        CardDetails(name: TWO_OF_HEARTS, type: cardType[0]),
        CardDetails(name: TWO_OF_SPADES, type: cardType[0]),
        CardDetails(name: THREE_OF_CLUBS, type: cardType[1]),
        CardDetails(name: THREE_OF_DIAMONDS, type: cardType[1]),
        CardDetails(name: THREE_OF_HEARTS, type: cardType[1]),
        CardDetails(name: THREE_OF_SPADES, type: cardType[1]),
        CardDetails(name: FOUR_OF_CLUBS, type: cardType[2]),
        CardDetails(name: FOUR_OF_DIAMONDS, type: cardType[2]),
        CardDetails(name: FOUR_OF_HEARTS, type: cardType[2]),
        CardDetails(name: FOUR_OF_SPADES, type: cardType[2]),
        CardDetails(name: FIVE_OF_CLUBS, type: cardType[3]),
        CardDetails(name: FIVE_OF_DIAMONDS, type: cardType[3]),
        CardDetails(name: FIVE_OF_HEARTS, type: cardType[3]),
        CardDetails(name: FIVE_OF_SPADES, type: cardType[3]),
        CardDetails(name: SIX_OF_CLUBS, type: cardType[4]),
        CardDetails(name: SIX_OF_DIAMONDS, type: cardType[4]),
        CardDetails(name: SIX_OF_HEARTS, type: cardType[4]),
        CardDetails(name: SIX_OF_SPADES, type: cardType[4]),
        CardDetails(name: SEVEN_OF_CLUBS, type: cardType[5]),
        CardDetails(name: SEVEN_OF_DIAMONDS, type: cardType[5]),
        CardDetails(name: SEVEN_OF_HEARTS, type: cardType[5]),
        CardDetails(name: SEVEN_OF_SPADES, type: cardType[5]),
        CardDetails(name: EIGHT_OF_CLUBS, type: cardType[6]),
        CardDetails(name: EIGHT_OF_DIAMONDS, type: cardType[6]),
        CardDetails(name: EIGHT_OF_HEARTS, type: cardType[6]),
        CardDetails(name: EIGHT_OF_SPADES, type: cardType[6]),
        CardDetails(name: NINE_OF_CLUBS, type: cardType[7]),
        CardDetails(name: NINE_OF_DIAMONDS, type: cardType[7]),
        CardDetails(name: NINE_OF_HEARTS, type: cardType[7]),
        CardDetails(name: NINE_OF_SPADES, type: cardType[7]),
        CardDetails(name: TEN_OF_CLUBS, type: cardType[8]),
        CardDetails(name: TEN_OF_DIAMONDS, type: cardType[8]),
        CardDetails(name: TEN_OF_HEARTS, type: cardType[8]),
        CardDetails(name: TEN_OF_SPADES, type: cardType[8]),
        CardDetails(name: JACK_OF_CLUBS, type: cardType[10]),
        CardDetails(name: JACK_OF_DIAMONDS, type: cardType[10]),
        CardDetails(name: JACK_OF_HEARTS, type: cardType[10]),
        CardDetails(name: JACK_OF_SPADES, type: cardType[10]),
        CardDetails(name: QUEEN_OF_CLUBS, type: cardType[11]),
        CardDetails(name: QUEEN_OF_DIAMONDS, type: cardType[11]),
        CardDetails(name: QUEEN_OF_HEARTS, type: cardType[11]),
        CardDetails(name: QUEEN_OF_SPADES, type: cardType[11]),
        CardDetails(name: KING_OF_CLUBS, type: cardType[12]),
        CardDetails(name: KING_OF_DIAMONDS, type: cardType[12]),
        CardDetails(name: KING_OF_HEARTS, type: cardType[12]),
        CardDetails(name: KING_OF_SPADES, type: cardType[12]),
        CardDetails(name: JOKER, type: cardType[13]),
    ]
    
    var card: CardDetails
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.black, Color("dark_blue"), Color("dark_cyan")], startPoint: .topTrailing, endPoint: .bottomLeading).edgesIgnoringSafeArea(.all)
            VStack {
                Text("Player 2")
                    .font(.system(size: 40))
                    .foregroundColor(Color("red"))
                HStack {
                    Image(BACK)
                        .resizable()
                        .frame(width: 80, height: 140, alignment: .bottomLeading)
                        .padding(5)
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
        GameView(card: details[0])
            .previewInterfaceOrientation(.portrait)
    }
}
