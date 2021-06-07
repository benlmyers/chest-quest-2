//
//  Global.swift
//  Chest Quest 2
//
//  Created by Ben Myers on 6/4/21.
//

import Foundation
import SwiftUI

class Global: ObservableObject {
  
  var p: Player {
    set { player = newValue }
    get { player }
  }
  
  @Published var tab: Tab = .home
  
  @Published var player: Player = Player()
}
