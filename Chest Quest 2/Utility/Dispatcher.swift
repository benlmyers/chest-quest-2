//
//  Dispatcher.swift
//  Chest Quest 2
//
//  Created by Ben Myers on 6/4/21.
//

import Foundation

struct Dispatcher {
  
  func delay(_ time: TimeInterval, _ action: @escaping () -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + time, execute: action)
  }
  
  func tick(_ action: @escaping () -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + 0.1, execute: action)
  }
}
