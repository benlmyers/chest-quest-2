//
//  Animation.swift
//  Chest Quest 2
//
//  Created by Ben Myers on 6/4/21.
//

import SwiftUI

extension Animation {
  
  /// A custom ease out animation
  public static var customEaseOut: Animation {
    Animation.timingCurve(0.25, 0.75, 0, 1, duration: 0.5)
  }
  
  /// A custom ease out animation
  public static func customEaseOut(duration: Double) -> Animation {
    Animation.timingCurve(0.25, 0.75, 0, 1, duration: duration)
  }
  
  /// A custom ease in animation
  public static var customEaseIn: Animation {
    Animation.timingCurve(0.75, 0.25, 0, 1, duration: 0.5)
  }
  
  /// A custom ease in animation
  public static func customEaseIn(duration: Double) -> Animation {
    Animation.timingCurve(0.75, 0.25, 0, 1, duration: duration)
  }
  
  /// A custom bounce animation
  public static func bounce() -> Animation {
    return Animation.spring(response: 1.0, dampingFraction: 0.4, blendDuration: 1.0)
  }
  
}
