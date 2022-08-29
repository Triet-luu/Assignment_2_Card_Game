//
//  GameView.swift
//  Assignment_2_Card_Game
//
//  Created by Triet, Luu Huynh on 17/08/2022.
//

import SwiftUI

struct Interaction {
    private(set) var discardedHands = [DiscardHand]()
    private(set) var players: [User]
    
    var playerdetails = [
        Player(player: 1, username: "A", overallpoint: 0, currentpoint: 0),
        Player(player: 2, username: "B", overallpoint: 0, currentpoint: 0)
    ]
    
    private var activePlayer: User {
        var player = User()
        
        if let activePlayerIndex = players.firstIndex(where: { $0.activePlayer == true }) {
            player = players[activePlayerIndex]
        } else {
            if let humanIndex = players.firstIndex(where: { $0.isPlayer == true }) {
                player = players[humanIndex]
            }
        }
        
        return player
    }
    
    init() {
        let bot = [
            User(playerName: "\(playerdetails[1].username)")
        ]
        players = bot
        players.append(User(playerName: "\(playerdetails[0].username)", isPlayer: true))
        
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
    
    mutating func select(_ card: CardDetails, in player: User) {
        if let cardIndex = player.cards.firstIndex(where: { $0.id == card.id}) {
            if let playerIndex = players.firstIndex(where: { $0.id == player.id}) {
                players[playerIndex].cards[cardIndex].selected.toggle()
            }
        }
    }
    
    mutating func playSelectedCard(of player: User) {
        if let playerIndex = players.firstIndex(where: { $0.id == player.id }) {
            var playerHand = players[playerIndex].cards.filter({ $0.selected == true})
            let remainingCards = players[playerIndex].cards.filter({ $0.selected == false})
            discardedHands.append(DiscardHand(hand: playerHand, handOwner: player))
            players[playerIndex].cards = remainingCards
        }
    }
    
    mutating func activePlayer(_ player: User) {
        if let playerIndex = players.firstIndex(where: { $0.id == player.id}) {
            players[playerIndex].activePlayer = true
            
            if !activePlayer.isPlayer {
                let botHand = getBotHand(of: activePlayer)
                if botHand.count > 0 {
                    for i in 0...botHand.count - 1 {
                        select(botHand[i], in: activePlayer)
                    }
                    playSelectedCard(of: activePlayer)
                }
                
            }
        }
    }
    
    func findStartingPlayer() -> User {
        var startingPlayer: User!
        
        for thePlayers in players {
            if thePlayers.isPlayer == false {
                startingPlayer = thePlayers
            }
        }
        
        return startingPlayer
    }
    
    func getBotHand(of player: User) -> Stack {
        var pairExist = false
        var rankCount = [Rank: Int]()
        
        let playerCardsByRank = player.cards
        
        for card in playerCardsByRank {
            if rankCount[card.rank] != nil {
                rankCount[card.rank]! += 1
            } else {
                rankCount[card.rank] = 1
            }
        }
        
        var cardsRankCount1 = 1
        var cardsRankCount2 = 1
        
        for rank in Rank.allCases {
            var thisRankCount = 0
            
            if rankCount[rank] != nil {
                thisRankCount = rankCount[rank]!
            } else {
                continue
            }
            if thisRankCount > cardsRankCount1 {
                if cardsRankCount1 != 1 {
                    cardsRankCount2 = cardsRankCount1
                }
                cardsRankCount1 = thisRankCount
            } else if thisRankCount > cardsRankCount2 {
                cardsRankCount2 = thisRankCount
            }
            
            pairExist = cardsRankCount1 > 1
        }
        
        var validHands = combination(player.cards, k: 1)
        
        if pairExist {
            var possibleCombination = Stack()
            for card in playerCardsByRank {
                if rankCount[card.rank]! > 1 {
                    possibleCombination.append(card)
                }
            }
            
            let possibleHands = combination(possibleCombination, k: 2)
            
            for i in 0..<possibleCombination.count {
                if Pair(possibleHands[i]) != .Invalid {
                    validHands.append(possibleHands[i])
                }
            }
        }
        
        var returnHand = Stack()
        return returnHand
    }
    
    func combination(_ cardArray: Stack, k: Int) -> [Stack] {
        var sub = [Stack]()
        var ret = [Stack]()
        var next = Stack()
        
        for i in 0..<cardArray.count {
            if k == 1 {
                var tempHand = Stack()
                tempHand.append(cardArray[i])
                ret.append(tempHand)
            } else {
                sub = combination(sliceArray(cardArray, x1: i+1, x2: cardArray.count - 1), k: k-1)
                
                for subI in 0..<sub.count {
                    next = sub[subI]
                    next.append(cardArray[i])
                    ret.append(next)
                }
            }
        }
        return ret
    }
    
    func sliceArray(_ cardArray: Stack, x1: Int, x2: Int) -> Stack {
        var sliced = Stack()
        
        if x1 <= x2 {
            for i in x1...x2 {
                sliced.append(cardArray[i])
            }
        }
        
        return sliced
    }
}
var duelPlayers = [
    User(),
    User(isPlayer: true)
]

enum Pair {
    case Invalid, Pair
    
    init (_ cards: Stack) {
        var handResult: Self = .Invalid
        
        if cards.count == 2 {
            if cards[0].rank == cards[1].rank {
                handResult = .Pair
            }
        }
        
        self = handResult
    }
}

struct GameView: View {
    @State private var deal: Bool = true
    
    @ObservedObject var oldmaid = OldMaidControl()
        
    var playerdetails = [
        Player(player: 1, username: "A", overallpoint: 0, currentpoint: 0),
        Player(player: 2, username: "B", overallpoint: 0, currentpoint: 0)
    ]
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.black, Color("dark_blue"), Color("dark_cyan")], startPoint: .topTrailing, endPoint: .bottomLeading).edgesIgnoringSafeArea(.all)
            VStack {
                ForEach(oldmaid.players) { player in
                    if !player.isPlayer {
                        Text("Player \(playerdetails[1].player)")
                            .font(.system(size: 20))
                            .foregroundColor(Color("red"))
                        LazyHGrid(rows: [GridItem(.adaptive(minimum: 100), spacing: -76)]) {
                            ForEach (player.cards) {
                                card in CardView(cardName: "BACK")
                                    .offset(y: card.selected ? 120 : 0)
                                    .onTapGesture {
                                        oldmaid.select(card, in: player)
                                    }
                            }
                        }
                    } else {
                        HStack {
//                            Image("BACK")
//                                .resizable()
//                                .frame(width: 50, height: 70, alignment: .bottomLeading)
//                                .padding(5)
                            let myHand = oldmaid.players[0].cards.filter {
                                $0.selected == true
                            }
                            let Pair = "\(oldmaid.checkHand(myHand))"
                            Text(Pair)
                                .frame(width: 50, height:50)
                                .padding(90)
                            
                        }
                        
                        let me = oldmaid.players[0]
                        LazyHGrid(rows: [GridItem(.adaptive(minimum: 100), spacing: -77)]) {
                            ForEach (me.cards) { card in
                                CardView(cardName: card.name)
                                    .offset(y: card.selected ? -20 : 0)
                                    .onTapGesture {
                                        oldmaid.select(card, in: me)
                                    }
                            }
                        }
                        Text("Player \(playerdetails[0].player)")
                            .font(.system(size: 20))
                            .foregroundColor(Color("green"))
                    }
                }
                Spacer()
            }
        }
        .onAppear {
            let starterPlayer = oldmaid.findStartingPlayer()
            oldmaid.activePlayer(starterPlayer)
            print(starterPlayer.playerName)
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
            .previewInterfaceOrientation(.portrait)
    }
}
