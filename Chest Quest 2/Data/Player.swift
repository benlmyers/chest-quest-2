//
//  Player.swift
//  Chest Quest 2
//
//  Created by Ben Myers on 6/4/21.
//

import SwiftUI

struct Player: Codable {
  
  static var player_key: String = "player"
  
  var u: Unlocks {
    set { unlocks = newValue }
    get { unlocks }
  }
  
  var money: Int = 0
  var maxMoney: Int = 100
  var shards: Int = 0
  var maxShards: Int = 10
  
  var unlocks: Unlocks = Unlocks()
  
  var gems: [Gem: Int] = [
    .red: 0, .green: 0, .blue: 0,
    .yellow: 0, .cyan: 0, .pink: 0,
    .orange: 0, .lime: 0, .spring: 0, .azure: 0, .violet: 0, .rose: 0
  ]
  
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
    case money, maxMoney, shards, maxShards
    case unlocks
    case gems
  }
}
