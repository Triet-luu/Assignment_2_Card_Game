/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 2
  Author: Your name (e.g. Nguyen Van Minh)
  ID: Your student id (e.g. 1234567)
  Created  date: dd/mm/yyyy (e.g. 31/07/2022)
  Last modified: dd/mm/yyyy (e.g. 05/08/2022)
  Acknowledgement: https://bicyclecards.com/how-to-play/old-maid/
*/

import Foundation
import SwiftUI

var RulesDetails: [GameRules] = [
    GameRules(name: "Old Maid",
              rule: "The Pack \n\n The standard 52-card pack is used, however, a joker card is added, making it a 53 cards deck. \n\n Object of the Game \n\n The goal is to form and discard pairs of cards, and not to be left with the odd card at the end. \n\n The Deal \n\n Any player shuffles the pack and deals them around, one at a time to each player, until all the cards have been handed out. Players do not need to have an equal number of cards. \n\n The Play \n\n Each player removes all pairs from his hand face down. If a player has three-of-a-kind, they remove only two of those three cards. The dealer then offers their hand, spread out face down, to the player on the left, who draws one card from it. This player discards any pair that may have been formed by the drawn card. The player then offers their own hand to the player on their left. Play proceeds in this way until all cards have been paired except one - the odd queen, which cannot be paired - and the player who has that card is the Old Maid! \n\n Irregularities \n\n If any player is found to have discarded two cards that are not a pair, (thus causing three unpaired cards instead of one to remain at the end), the player who made the mistake loses and becomes the Old Maid.")
]
