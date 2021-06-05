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
  
  static func load(to global: Global) {
    guard let data = UserDefaults.standard.object(forKey: player_key) as? Data else {
      global.player = Player()
      Debug.log("No player data was found.")
      return
    }
    let obj = try? NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as? Player
    global.player = obj ?? Player()
    Debug.log("Player loaded from UserDefaults!")
    print(obj)
  }
  
  static func save(with global: Global) {
    let encodedData = try? NSKeyedArchiver.archivedData(withRootObject: global.player, requiringSecureCoding: false)
    UserDefaults.standard.set(encodedData, forKey: player_key)
    Debug.log("Played saved to UserDefaults!")
  }
  
  enum CodingKeys: String, CodingKey {
    case money
  }
}
