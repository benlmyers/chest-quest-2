//
//  Player.swift
//  Chest Quest 2
//
//  Created by Ben Myers on 6/4/21.
//

import SwiftUI

struct Player: Codable {
  
  var money: Int = 0
  
  enum CodingKeys: String, CodingKey {
    case money
  }
}
