//
//  Debug.swift
//  Chest Quest 2
//
//  Created by Ben Myers on 6/4/21.
//

import Foundation

struct Debug {
  
  static var should_log: Bool = true
  
  static func log(_ t: Any) {
    if should_log {
      print(t)
    }
  }
}
