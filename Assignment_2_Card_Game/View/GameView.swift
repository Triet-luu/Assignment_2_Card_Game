//
//  GameView.swift
//  Assignment_2_Card_Game
//
//  Created by Triet, Luu Huynh on 17/08/2022.
//

import SwiftUI

struct Interaction {
    private(set) var players: [User]
    
    init() {
        let bot = [
            User()
        ]
        players = bot
        players.append(User(isPlayer: true))
        
        var deck = Deck()
        deck.createDeck()
        deck.shuffle()
        
        let randomStartingPlayer = Int(arc4random()) % players.count
        
        while deck.remainingCards() > 0 {
            for i in randomStartingPlayer...randomStartingPlayer + (players.count - 1) {
                let x = i % players.count
                let card = deck.drawCard()
                players[x].cards.append(card)
            }
        }
    }
}

var duelPlayers = [
    User(),
    User(isPlayer: true)
]

struct GameView: View {
    @State private var deal: Bool = true
    
    var oldmaid = OldMaidControl()
    
    @State private var playerHand = [Int](repeating: 0, count: 27)
    @State private var botHand: [Int] = [0, 1]
        
    var playerdetails = [
        Player(player: 1, username: "A", overallpoint: 0, currentpoint: 0),
        Player(player: 2, username: "B", overallpoint: 0, currentpoint: 0)
    ]
    
    func drawCard() {
        playerHand = playerHand.map({ _ in
            Int.random(in: 0...53-1)
        })
        botHand = botHand.map({ _ in
            Int.random(in: 0...53-1)
        })
    }
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.black, Color("dark_blue"), Color("dark_cyan")], startPoint: .topTrailing, endPoint: .bottomLeading).edgesIgnoringSafeArea(.all)
            VStack {
                ForEach(oldmaid.players) { player in
                    if !player.isPlayer {
                        Text("Player \(playerdetails[1].player)")
                            .font(.system(size: 20))
                            .foregroundColor(Color("red"))
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach (player.cards) {
                                    card in CardView(cardName: BACK)
                                }
                            }
                        }
                    } else {
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
                        Text("Player \(playerdetails[0].player)")
                            .font(.system(size: 20))
                            .foregroundColor(Color("green"))
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach (playerHand, id: \.self) { card in
                                    CardView(cardName: cardsInformation[card].name)
                                }
                            }
                        }
                    }
                }
                Spacer()
            }
        }
        .onAppear{drawCard()}
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
            .previewInterfaceOrientation(.portrait)
    }
}
