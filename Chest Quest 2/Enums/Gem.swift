//
//  Gem.swift
//  Chest Quest 2
//
//  Created by Ben Myers on 6/6/21.
//

import Foundation

enum Gem: String, Codable {
  case red = "Red", green = "Green", blue = "Blue"
  case yellow = "Yellow", cyan = "Cyan", magenta = "Magenta"
  case orange = "Orange", lime = "Lime", spring = "Spring", azure = "Azure", violet = "Violet", rose = "Rose"
  
  var tier: Int {
    switch self {
      case .red, .green, .blue: return 1
      case .yellow, .cyan, .magenta: return 2
      case .orange, .lime, .spring, .azure, .violet, .rose: return 3
    }
  }
}

/**
 Gem Forgery Guide
 
 Tier 1:
 Red, Green, Blue
 (Ruby, Jade, Sapphire)
 
 Tier 2:
 Yellow, Cyan, Magenta
 (Topaz, Aqua, Amethyst)
 
 Red + Green -> Yellow
 Green + Blue -> Cyan
 Red + Blue -> Magenta
 
 Tier 3:
 Orange, Lime, Spring, Azure, Violet, Rose
 (Amber, Emerald, Diamond, Diamond, Topaz, Opal)
 
 Red + Yellow -> Sunset
 Yellow + Green -> Lime
 Green + Cyan -> Spring
 Cyan + Blue -> Azure
 Blue + Magenta -> Violet
 Magenta + Red -> Rose
 
 Tier 4:
 Ruby,
 
 */
