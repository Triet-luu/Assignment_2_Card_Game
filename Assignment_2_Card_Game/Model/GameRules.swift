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

struct GameRules: Identifiable {
    var id = UUID()
    var name: String
    var rule: String
}
