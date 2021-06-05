//
//  Player.swift
//  Chest Quest 2
//
//  Created by Ben Myers on 6/4/21.
//

import SwiftUI

struct Player: Codable {
  
  static var player_key: String = "player"
  
  var money: Int = 0
  var maxMoney: Int = 100
  
  static func load(to global: Global) {
    var playerData: Player!
    if let data = UserDefaults.standard.value(forKey: player_key) as? Data {
      playerData = try? PropertyListDecoder().decode(Player.self, from: data)
      global.player = playerData ?? Player()
    } else {
      global.player = Player()
    }
    Debug.log("Player loaded from UserDefaults!")
  }
  
  static func save(with global: Global) {
    UserDefaults.standard.set(try? PropertyListEncoder().encode(global.player), forKey: player_key)
    Debug.log("Played saved to UserDefaults!")
  }
  
  enum CodingKeys: String, CodingKey {
    case money, maxMoney
  }
}
